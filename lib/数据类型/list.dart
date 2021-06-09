import 'package:dart_demo_learn/main.dart' as dart_demo_learn;

void main() {
//  print('Hello world: ${dart_demo_learn.calculate()}!');
//  Combie();
listAddFiled();

}

listAddFiled() {
  List list1 = [
    {
      'a': '111',
      'b': '222'
    },
    {
      'a': '333',
      'b': '444'
    },
  ];

  list1.forEach((item) {
    item['c'] = 'haha';
    item['d'] = item['b'];
  });

  print(list1);

}

remove() {

  List list = [
    {
      'title': 'CNY',
      'tip': '1'
    },
    {
      'icon': 'images/ic_exchange_usa.png',
      'title': 'USD',
      'desc': '美元\$',
      'viewType': 1,
      'tip': '0.14',
      'value': '',
    },
    {
      'title': 'JPY',
      'tip': '15.10'
    }
  ];

  list.removeAt(1);
  list.replaceRange(0, 1, [
    {
      'title': 'mod',
      'tip': '1'
    }
  ]);

  print(list);
}

Combie() {

  List list = [1, 2];

//  将两个list合并成一个
  List list2 = [
  {
    'a': '1',
    'b': 2
  },
  ...list
  ];

  print(list2);
}