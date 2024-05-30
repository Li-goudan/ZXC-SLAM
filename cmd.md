```shell
# launch camera
source ~/data/code/d455/devel/setup.bash

roslaunch realsense2_camera rs_aligned_depth.launch /camera/rgb/image_raw:=/camera/color/image_raw /camera/depth_registered/image_raw:=/camera/depth/image_rect_raw

roslaunch realsense2_camera rs_camera.launch /camera/image_raw:=/camera/color/image_raw

# run Mono
rosrun ORB_SLAM3 Mono Vocabulary/ORBvoc.txt Examples/Monocular/RealSense_D435i.yaml

# run Stereo
rosrun ORB_SLAM3 Stereo Vocabulary/ORBvoc.txt Examples/Stereo/RealSense_D435i.yaml

# run RGB-D
rosrun ORB_SLAM3 RGBD Vocabulary/ORBvoc.txt Examples/RGB-D/RealSense_D435i.yaml
```

C++

```
./Examples/Stereo-Inertial/stereo_inertial_realsense_D435i Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/RealSense_D435i.yaml

./Examples/Monocular/mono_realsense_D435i Vocabulary/ORBvoc.txt ./Examples/Monocular/RealSense_D435i.yaml

./Examples/Stereo/stereo_realsense_D435i Vocabulary/ORBvoc.txt ./Examples/Stereo/RealSense_D435i.yaml

./Examples/Stereo-Inertial/stereo_inertial_realsense_D435i Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/RealSense_D435i.yaml

./Examples/RGB-D/rgbd_realsense_D435i Vocabulary/ORBvoc.txt ./Examples/RGB-D/RealSense_D435i.yaml
```

