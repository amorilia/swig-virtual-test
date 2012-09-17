// test.java

public class Test extends TestObj {
  public static void main(String argv[]) {
    Test t = new Test();
    System.out.println(t.one());
  }
  public Object two() {
      return "hello";
  };
}

