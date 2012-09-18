using System;
using System.Collections;

class Test : TestObj {
    public Stack stack;

    public Test()
    {
        stack = new Stack();
    }

    public override void two() {
        Console.WriteLine("it works!");
        stack.Push(23);
    }
}

class Whatever
{ 
    public static void Main(string[] args) 
    { 
        Test t2 = new Test();
        t2.one();
        Object result = t2.stack.Pop();
        if ((int)result != 23)
        {
            throw new Exception("result not 23");
        }
    } 
}
