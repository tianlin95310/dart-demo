
void main() {
  String str1 = null;
  String str2 = '123';
  String str3 = '123';
  String str4;

  // print(str1 ??= str2);
  print(str1 ??= (str4 ?? '456'));

  print(null.toString());
}