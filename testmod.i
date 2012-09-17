%module(directors="1") testmod
%{
#include "src.hpp"
%}
%feature("director") Test;
%include "src.hpp"
