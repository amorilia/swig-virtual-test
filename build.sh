swig -c++ -python testvirtual.i
gcc -fPIC -c testvirtual_wrap.cxx -o testvirtual_wrap.o -I/usr/include/python2.7 -I../include/
g++ -shared testvirtual_wrap.o -o _testvirtual.so
