cmake  -DUSE_LIBRARY=ON -DFOO_OPT="Changed"   ./src
rm -f CMakeCache.txt
cmake ./src
