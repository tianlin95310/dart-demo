void main() {
  () {
    print('fucker');
  }();

  String str = '123';
  switch (str) {
    case '123':
      print('123');
      break;
    case '124':
      print('124');
      break;
    default:
      print('default');
  }
}
