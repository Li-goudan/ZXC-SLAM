echo "Building ROS nodes"

cd Examples_old/ROS/ORB_SLAM3
sed -i 's/++11/++14/g' CMakeLists.txt
rm -r build
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j
