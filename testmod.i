%module(directors="1") testmod
%{
#include "src.hpp"
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
