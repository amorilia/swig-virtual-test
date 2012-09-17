swig -Wall -c++ -python testmod.i
g++ -fPIC -c src.cpp -o src.o
g++ -fPIC -c testmod_wrap.cxx -o testmod_wrap.o -I/usr/include/python2.7 -I.
g++ -shared src.o testmod_wrap.o -o _testmod.so
