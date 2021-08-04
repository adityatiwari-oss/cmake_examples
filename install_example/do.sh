mkdir build
cd build
rm -rf /tmp/install_example
cmake  -DCMAKE_INSTALL_PREFIX=/tmp/install_example -DCMAKE_INSTALL_LIBDIR=lib64 ../code_base
make install
ls /tmp/install_example
