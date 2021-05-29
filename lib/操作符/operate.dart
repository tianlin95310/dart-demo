class A implements Comparable{
  int v;
  @override
  int compareTo(other) {
    return 0;
  }
  @override
  bool operator ==(other) {
    return other.v == v;
  }
}
void main() {
  A a = A();
  A b = A();
  print(a == b);
  print(a.compareTo(b));
}

fun1(){
  String str1 = null;
  String str2 = '123';
  String str3 = '123';
  String str4;

  // print(str1 ??= str2);
  print(str1 ??= (str4 ?? '456'));

  print(null.toString());

  print(str1 ?? str4 ?? str3);

  print(str2 == str3);
}