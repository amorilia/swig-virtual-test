swig -Wall -c++ -python testmod.i
g++ -fPIC -c testmod_wrap.cxx -o testmod_wrap.o -I/usr/include/python2.7 -I../include/
g++ -shared testmod_wrap.o -o _testmod.so
