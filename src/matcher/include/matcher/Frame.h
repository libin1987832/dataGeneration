#ifndef	RELATIVE_FRAME_HEADER_H
	#define RELATIVE_FRAME_HEADER_H
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_boost_headers.h>

	#include <shared_files/RelativePoint.h>
	#include <matcher/DataPoint.h>


class Frame
{
	private:
		cv::Mat p_left,p_right;
		cv::Mat q_map;//disparity to 3d point mapping
		int image_height,image_width;
		std::vector<DataPoint> output_;
	
		boost::variate_generator<boost::mt19937&, 
                      boost::normal_distribution<> > *generator_nd;
	
		void project(DataPoint &ans,cv::Mat relative_left_point);
		bool withinBounds(cv::Mat pixel);
		void setBounds(DataPoint &ans);
		void genNoise(DataPoint &ans);
		cv::Mat syntheticNoise(cv::Mat original);
		void triangulate(DataPoint &ans);
	public:
		Frame(cv::Mat l,cv::Mat r,cv::Mat Q,int height,int width,boost::variate_generator<boost::mt19937&, 
                           boost::normal_distribution<> > *my_generator);
		void addPoint(shared_files::RelativePoint relpoint);
		int getTotalPoints();
		DataPoint getPoint(int index);
};

#endif