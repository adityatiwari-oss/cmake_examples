mkdir build
cd build
cmake ../src
echo "Running make"
make
ls -l
ldd hello-world 
