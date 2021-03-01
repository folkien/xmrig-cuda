
sudo apt libuv1.dev install hwloc libhwloc-dev   -yf
mkdir -p build && cd build
CMAKE="-O2 -march=native -mtune=native" cmake .. -DCUDA_LIB=/usr/local/cuda/lib64/stubs/libcuda.so -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda
make -j9
mkdir -p /opt/xmrig/
cp -rfv *.so /opt/xmrig/
