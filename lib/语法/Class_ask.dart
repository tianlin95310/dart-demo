class A{
  String name = '';
}

class B {
  A? a1;
  // A a2;
  // final A a3;
}

void main(){
  B b = B();
  print(b.a1);
}
