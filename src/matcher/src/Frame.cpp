#include <matcher/Frame.h>

Frame::Frame(cv::Mat l,cv::Mat r,cv::Mat Q,int height,int width,boost::variate_generator<boost::mt19937&, 
                           boost::normal_distribution<> > *my_generator)
{
	p_left=l;
	p_right=r;
	q_map=Q;
	image_height=height;
	image_width=width;
	generator_nd=my_generator;
}

void Frame::addPoint(shared_files::RelativePoint relpoint)
{
	DataPoint answer;

	answer.setID(relpoint.identification.data);
	
	//convert point to opencv Mat class
	cv::Mat tempInput;

	tempInput=cv::Mat(3,1,CV_64FC1);
	
	tempInput.at<double>(0,0)=relpoint.coord.x;
	tempInput.at<double>(1,0)=relpoint.coord.y;
	tempInput.at<double>(2,0)=relpoint.coord.z;
	project(answer,tempInput);
	setBounds(answer);
	if(answer.getProjected())
	{
		genNoise(answer);
		answer.calculateDisparity();
		triangulate(answer);
	}
	output_.push_back(answer);
}

void Frame::triangulate(DataPoint &ans)
{
	cv::Mat packed_vector;//[x,y,disp,1]
	packed_vector=cv::Mat(4,1,CV_64FC1);
	
	packed_vector.at<double>(0,0)=ans.getProjectedPixel(true).at<double>(0,0);
	packed_vector.at<double>(1,0)=ans.getProjectedPixel(true).at<double>(1,0);
	packed_vector.at<double>(2,0)=ans.getDisparity(false);//get non noisy disparity
	packed_vector.at<double>(3,0)=1.0;
	
	cv::Mat temp;
	temp=q_map*packed_vector;
	temp.at<double>(0,0)/=temp.at<double>(3,0);
	temp.at<double>(1,0)/=temp.at<double>(3,0);
	temp.at<double>(2,0)/=temp.at<double>(3,0);
	temp.at<double>(3,0)/=temp.at<double>(3,0);
	
	cv::Mat ROI_(temp,cv::Rect(0,0,1,3));
	
	cv::Mat tempnoise;
	packed_vector.at<double>(0,0)=ans.getNoisyProjectedPixel(true).at<double>(0,0);
	packed_vector.at<double>(1,0)=ans.getNoisyProjectedPixel(true).at<double>(1,0);
	packed_vector.at<double>(2,0)=ans.getDisparity(true);//get noisy disparity
	packed_vector.at<double>(3,0)=1.0;
	
	tempnoise=q_map*packed_vector;
	tempnoise.at<double>(0,0)/=tempnoise.at<double>(3,0);
	tempnoise.at<double>(1,0)/=tempnoise.at<double>(3,0);
	tempnoise.at<double>(2,0)/=tempnoise.at<double>(3,0);
	tempnoise.at<double>(3,0)/=tempnoise.at<double>(3,0);
	
	cv::Mat ROI_noise(tempnoise,cv::Rect(0,0,1,3));

	ans.setTriangulated(ROI_,ROI_noise);
}



////////////////////
//Private
///////////////////

void Frame::project(DataPoint &ans,cv::Mat relative_left_point)
{
	cv::Mat homogenous,lprojected,rprojected;
	homogenous=cv::Mat(4,1,CV_64FC1);
	homogenous.at<double>(0,0)=relative_left_point.at<double>(0,0);
	homogenous.at<double>(1,0)=relative_left_point.at<double>(1,0);
	homogenous.at<double>(2,0)=relative_left_point.at<double>(2,0);
	homogenous.at<double>(3,0)=1.0;
	

	lprojected=p_left*homogenous;
	rprojected=p_right*homogenous;

	lprojected.at<double>(0,0)/=lprojected.at<double>(2,0);
	lprojected.at<double>(1,0)/=lprojected.at<double>(2,0);
	lprojected.at<double>(2,0)/=lprojected.at<double>(2,0);
	rprojected.at<double>(0,0)/=rprojected.at<double>(2,0);
	rprojected.at<double>(1,0)/=rprojected.at<double>(2,0);	
	rprojected.at<double>(2,0)/=rprojected.at<double>(2,0);	
	
	ans.setProjections(lprojected,rprojected);

}

void Frame::setBounds(DataPoint &ans)
{
	bool projected;
	projected=withinBounds(ans.getProjectedPixel(true));
	if(projected)
	{
		projected=withinBounds(ans.getProjectedPixel(false));
	}	
	ans.setWithinBounds(projected);	
}

bool Frame::withinBounds(cv::Mat pixel)
{
	
	int converted_u,converted_v;
	converted_u=(int) pixel.at<double>(0,0);
	converted_v=(int) pixel.at<double>(1,0);
	bool projected = false;
	
	if((converted_u>=0)&&(converted_u<=image_width))
	{
		if((converted_v>=0)&&(converted_v<=image_height))
		{
			projected=true;
		}
	}
	return projected;

}

void Frame::genNoise(DataPoint &ans)
{
	cv::Mat original_left,original_right;
	original_left=ans.getProjectedPixel(true).clone();
	original_right=ans.getProjectedPixel(false).clone();
	bool complete=false;
	
	cv::Mat templeft,tempright;
	while(!complete)
	{
		templeft=syntheticNoise(original_left).clone();
		tempright=syntheticNoise(original_right).clone();
		
		if(withinBounds(templeft))
		{
			if(withinBounds(tempright))
			{
				complete=true;
			 }
		}
	}
	ans.setNoise(templeft,tempright);
	
}

cv::Mat Frame::syntheticNoise(cv::Mat original)
{
	double u_noise,v_noise;
	u_noise=(*generator_nd)();
	v_noise=(*generator_nd)();
	
	cv::Mat noisy_pixel;
	noisy_pixel=original.clone();
	noisy_pixel.at<double>(0,0)+=u_noise;
	noisy_pixel.at<double>(1,0)+=v_noise;
	
	return noisy_pixel;
	
}

int Frame::getTotalPoints()
{
	return output_.size();
}

DataPoint Frame::getPoint(int index)
{
	return output_[index];
}

