#include <matcher/DataPoint.h>

DataPoint::DataPoint()
{
	l_proj=cv::Mat(2,1,CV_64FC1);
	r_proj=cv::Mat(2,1,CV_64FC1);
	noise_left=cv::Mat(2,1,CV_64FC1);
	noise_right=cv::Mat(2,1,CV_64FC1);
	triangulated=cv::Mat(3,1,CV_64FC1);
	noisy_triangulated=cv::Mat(3,1,CV_64FC1);
}

void DataPoint::setID(int id)
{
	ID=id;
}

void DataPoint::setProjections(cv::Mat left,cv::Mat right)
{
	//create a full copy of the pixels
	cv::Mat ROI_l(left,cv::Rect(0,0,1,2));//region of interest is the first two elements of matrix
	l_proj=ROI_l.clone();
	
	cv::Mat ROI_r(right,cv::Rect(0,0,1,2));
	r_proj=ROI_r.clone();
}

void DataPoint::setWithinBounds(bool within)
{
	projected=within;
}

void DataPoint::setTriangulated(cv::Mat point,cv::Mat point_n)
{
	triangulated=point.clone();
	noisy_triangulated=point_n.clone();
}





///////////////////
//Accessor methods
/////////////////

int DataPoint::getID()
{
	return ID;
}

cv::Mat DataPoint::getProjectedPixel(bool left)
{

	if(left)
	{
		return l_proj;
	}
	else
	{
		return r_proj;
	}
}

cv::Mat DataPoint::getNoisyProjectedPixel(bool left)
{
	if(left)
	{
		return noise_left;
	}
	else
	{
		return noise_right;
	}
}

cv::Mat DataPoint::getTriangulated(bool noisy)
{
	if(noisy)
	{
		return noisy_triangulated;
	}
	else
	{
		return triangulated;
	}
}

bool DataPoint::getProjected()
{
	return projected;
}

void DataPoint::setNoise(cv::Mat leftn,cv::Mat rightn)
{
	noise_left=leftn.clone();
	noise_right=rightn.clone();
}

void DataPoint::calculateDisparity()
{
	//calculate disparity
	disparity=l_proj.at<double>(0,0)-r_proj.at<double>(0,0);
	noisy_disparity=noise_left.at<double>(0,0)-noise_right.at<double>(0,0);
}

double DataPoint::getDisparity(bool noisy)
{
	if(noisy)
	{
		return noisy_disparity;
	}
	else
	{
		return disparity;
	}
}


