swig -Wall -c++ -java testmod.i

g++ -fPIC -c testmod_wrap.cxx -o testmod_wrap.o -I/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.6.x86_64/include/ -I/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.6.x86_64/include/linux/ -I/System/Library/Frameworks/JavaVM.framework/Headers -I.

g++ -shared testmod_wrap.o -o libtestmod.so
# for mac:
#g++ -dynamiclib testmod_wrap.o -o libtestmod.jnilib

javac *.java

# run it as well
# must set java.library.path to the path where libtestmod.so resides
java -Djava.library.path=./ -cp . Test

