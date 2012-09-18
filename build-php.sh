swig -Wall -c++ -php testmod.i
g++ -fPIC -c testmod_wrap.cpp -o testmod_wrap.o -I. `php-config --includes`
g++ -shared testmod_wrap.o -o testmod.so
php -d extension=`pwd`/testmod.so test.php
