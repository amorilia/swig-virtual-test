import testmod

class Test(testmod.TestInt):
    def two(self):
        print("it works!")
        return 999

t = testmod.TestInt()
assert t.one() == 0

t = Test()
# should also print "it works!"
assert t.one() == 999
