%module(directors="1") testmod
%{
class Test
{
public:
    void one() { two(); }
    virtual void two() {};
};
%}

%feature("director") Test;
class Test
{
public:
    void one();
    virtual void two();
};
