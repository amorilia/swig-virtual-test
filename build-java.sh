swig -Wall -c++ -java testmod.i
g++ -fPIC -c testmod_wrap.cxx -o testmod_wrap.o -I/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.6.x86_64/include/ -I/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.6.x86_64/include/linux/ -I.
g++ -shared testmod_wrap.o -o libtestmod.so
javac *.java
