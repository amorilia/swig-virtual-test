%module(directors="1") testmod
%{
#include "src.hpp"
%}
%include "src.hpp"

#ifdef SWIGPYTHON
%feature("director") Test<PyObject *>; // NOT Test
%template(TestObj) Test<PyObject *>;
#endif
