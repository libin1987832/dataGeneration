#ifndef DATAPOINT_HEADER_H
	#define DATAPOINT_HEADER_H
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <iostream>
class DataPoint
{
	private:
		cv::Mat l_proj;
		cv::Mat r_proj;
		bool projected;
		int ID;
		cv::Mat noise_left;
		cv::Mat noise_right;
		double disparity;
		double noisy_disparity;
		cv::Mat triangulated;
		cv::Mat noisy_triangulated;
	public:
		DataPoint();
		void setID(int id);
		void setProjections(cv::Mat left,cv::Mat right);//assuming homogenous pixel values that have been normalized (u,v,1)
		void setWithinBounds(bool within);
		void setNoise(cv::Mat leftn,cv::Mat rightn);
		void setTriangulated(cv::Mat point,cv::Mat point_n);
		void calculateDisparity();
		//accessor methods
		int getID();
		cv::Mat getProjectedPixel(bool left);
		cv::Mat getNoisyProjectedPixel(bool left);
		cv::Mat getTriangulated(bool noisy);
		double getDisparity(bool noisy);
		bool getProjected();	
};

#endif