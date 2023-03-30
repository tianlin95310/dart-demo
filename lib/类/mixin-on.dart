mixin A {
  fun() {
    print('A');
  }
}
mixin B on Man{
  fun() {
    print('B');
  }
}

abstract class Man {
  say();
}
// on 限制混入B时需要AClass继承的类C需要实现或继承Man

// abstract class C extends Man{
//   fun();
// }
abstract class C implements Man{
  fun();
}
// dart只能单继承extends只能接一个
class AClass extends C with A, B implements Man{
  @override
  say() {
  }
}

// dart只能单继承extends只能接一个
class BClass extends C with B, A, B, A implements Man{
  @override
  say() {
  }
}

void main() {
  AClass().fun();
  BClass().fun();
}