import testmod

class Test(testmod.TestObj):
    def two(self):
        print("it works!")
        return [1, 2, "x"]

t = testmod.TestObj()
# at the moment, default implementation of two() will raise SystemError
#assert t.one() == None

t = Test()
# should also print "it works!"
assert t.one() == [1, 2, "x"]
