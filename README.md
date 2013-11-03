Oscillatory-Motion-Tracking-With-x-IMU
======================================

A demonstration for tracking cyclic motion using an [x-IMU](http://www.x-io.co.uk/x-imu) as shown in [this video](http://www.youtube.com/watch?v=SI1w9uaBw6Q).  During cyclic motion, the mean velocity and position are zero over a short period of time.  For example, this might represent the motion of a [buoy](http://en.wikipedia.org/wiki/Buoy) bobbing up and down in the ocean or the [chewing motion of a jaw](http://www.youtube.com/watch?v=9CFl4gasV48).

<div align="center">
<img src="https://raw.github.com/xioTechnologies/Oscillatory-Motion-Tracking-With-x-IMU/master/Video%20Screenshot.png"/>
</div>

In the video, the <a href="http://www.x-io.co.uk/x-imu">x-IMU</a> was used to log test data via USB which was then processed using MALAB.  Only the gyroscope and accelerometer measurements was used.  The sensor data was first processed through an [AHRS algorithm](http://www.x-io.co.uk/open-source-imu-and-ahrs-algorithms/) to calculate the orientation of the x-IMU relative to the Earth so that the corresponding direction of gravity could be subtracted from the accelerometer measurements.  The resultant measurement of acceleration was then integrated to yield a velocity and the velocity [high-pass filtered](http://en.wikipedia.org/wiki/High-pass_filter) to remove any drift.  This was then integrated again to yield a position which was also high-pass filtered to remove drift.  The resultant position tracking seen in the video is able to track the cyclic motion of the x-IMU but slowly 'pulls' the x-IMU back to the origin when it is stationary.

The repository includes the original source code and example data used to create the video.
