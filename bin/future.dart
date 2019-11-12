void main(){
  Future.wait([fun1(), fun2()])
  .then((res) {
    print(res);
  });

}

Future<dynamic> fun1() async{
  Future.delayed(Duration(seconds: 1), (){
    print('fun1');
  });
  return '111111';
}

Future<dynamic> fun2() async {
  print('fun2');
  return '222222';
}