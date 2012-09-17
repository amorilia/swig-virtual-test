#ifndef SRC_HPP_INCLUDED
#define SRC_HPP_INCLUDED

template <typename T>
class Test
{
public:
    T one() { return two(); };
    virtual T two() { return T(); };
    virtual ~Test() {};
};

#endif
