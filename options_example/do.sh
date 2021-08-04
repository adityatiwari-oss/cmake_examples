mkdir build
cd build	
cmake ../src
cmake  -DUSE_LIBRARY=ON -DFOO_OPT="Changed"   ../src
