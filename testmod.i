%module(directors="1") testmod
%{
#include "src.hpp"
%}
%include "src.hpp"
%feature("director") Test<int>; // NOT TestInt
%template(TestInt) Test<int>;
