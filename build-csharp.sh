swig -Wall -c++ -csharp testmod.i
g++ -fPIC -c testmod_wrap.cxx -o testmod_wrap.o -I.
g++ -shared testmod_wrap.o -o libtestmod.so
