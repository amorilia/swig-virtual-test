swig -Wall -c++ -csharp testmod.i
g++ -fPIC -c testmod_wrap.cxx -o testmod_wrap.o -I.
g++ -shared testmod_wrap.o -o libtestmod.so
gmcs -nologo -out:test.exe test.cs testmod.cs TestObj.cs testmodPINVOKE.cs
mono test.exe

# TODO set up a library
#mcs /target:library /out:TestMod.dll testmod.cs TestObj.cs testmodPINVOKE.cs

