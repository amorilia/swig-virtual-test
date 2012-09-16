%module(directors="1") testvirtual
%{
class Test
{
public:
    void one() { two(); }
    virtual void two() {};
};
%}

%feature(directors) Test;
class Test
{
public:
    void one();
    virtual void two();
};
