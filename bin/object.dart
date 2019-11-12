void main() {

//  objectClone();
  objectCloneUseApi();
//  testIs();
//  testAnnl();
}

class A {
  dynamic name;

  @override
  String toString() {
    return name.toString();
  }

}

objectCloneUseApi() {
  var a = {
    'a': '1',
    'b': 2
  };

  var b = Map.castFrom(a);  // 改的是A
  b['a'] = 'cloneb';

  var c = Map.from(a);
  c['a'] = 'clonec';

  var d = Map.of(a);
  d['a'] = 'cloned';

  var e = Map.unmodifiable(a);
  // e['a'] = 'clonee';
  print(a);
  print(b);
  print(c);
  print(d);
  print(e);
}
objectClone() {
  A a1 = A();
  a1.name = 'qwe';
  print(a1);

  A a2 = a1;
  a2.name = 123;
  print(a1);

  var a3 = {a1};  // 无法克隆，失败

  print(a3.toSet());
  print(a3.toList(growable: false));
  print(a3.toList(growable: true));
  print(a3.toString());

  print(a3 is Set); // true
  print(a3 is Map);
  print(a3 is Object);

  // set.elementAt
  var a4 = {a1}.elementAt(0);
  a4.name = 'clone';

  print(a1);
  print(a4);
}
testIs() {
  var str = {};
  print(str is Map);
  print(str is Object);
  print(main is Object);
  print(main is Map);

}

testAnnl() {
  var a = {'a': '1'};
  print(a);
  print({a});
  print({...a});
  print({...a} is Function);

  print('----------------');

  var b = [1, 2, 3];
  print({...b});
  print(b is Map);
  print({...b} is Map);
  print('----------------');

  var c = [a];
  print({...c});
  print(c is Map);
  print({...c} is Map);
}