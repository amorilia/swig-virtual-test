import testmod

class Test(testmod.Test):
    def two(self):
        print "it works!"

t = Test()
t.one() # should print "it works!"
