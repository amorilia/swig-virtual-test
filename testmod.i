%module(directors="1") testmod
%{
#include "src.hpp"
%}
%include "src.hpp"

#ifdef SWIGPYTHON
%feature("director") Test<PyObject *>; // NOT Test
%template(TestObj) Test<PyObject *>;
// python specific exception handling
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
