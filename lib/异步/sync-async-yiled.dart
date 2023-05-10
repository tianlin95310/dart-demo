void main() {
  print(funa()..cast().forEach(print));
  print(funb()..forEach(print));
  print(func()..then((value) => null));
  print(fund()..forEach(print));
}

// 返回同步流
Stream<int> funa() async* {
  yield await 1;
  yield* Stream<int>.fromIterable([2 ,3]);
  yield 4;
}
// unsupported sync
// Iterable<List> funb() sync {
//   yield [];
// }
//返回迭代器
Iterable<int> funb() sync* {
  List<int> data1 = [1, 2, 3];
  yield* [4, 5];
  yield* data1.skip(2);
  yield 6;
}
//返回异步
Future func() async {
  return 123;
}
//返回迭代器
Iterable<List> fund() sync* {
  yield [1];
  yield* [[2], [3]];
}

