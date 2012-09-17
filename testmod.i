%module(directors="1") testmod
%{
#include "src.hpp"

// begin temporary hack: expose std::string for java
#ifdef SWIGJAVA
#include <string>
#endif
// end temporary hack
%}
%include "src.hpp"

#ifdef SWIGPYTHON
%feature("director") Test<PyObject *>; // NOT TestObj
%template(TestObj) Test<PyObject *>;
// python specific exception handling
// see http://www.swig.org/Doc2.0/Python.html#Python_nn36
%feature("director:except") {
    if ($error != NULL) {
        throw Swig::DirectorMethodException();
    }
}
%exception {
    try { $action }
    catch (Swig::DirectorException &e) { SWIG_fail; }
}
#endif

#ifdef SWIGJAVA
// doesn't work (yet?)
//%feature("director") Test<jobject *>;
//%template(TestObj) Test<jobject *>;
%include "std_string.i"
%feature("director") Test<std::string>;
%template(TestStr) Test<std::string>;
// automatically load the module
// see http://stackoverflow.com/questions/8168517/generating-java-interface-with-swig
%pragma(java) jniclasscode=%{
  static {
    try {
        System.loadLibrary("testmod");
    } catch (UnsatisfiedLinkError e) {
      System.err.println("Native code library failed to load. \n" + e);
      System.exit(1);
    }
  }
%}
#endif

