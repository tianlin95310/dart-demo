void main() {

//  mapCombine();

  combineIfNull();
}
combineIfNull(){
  Map map;

  Map map2 = {
    'age': 22
  };

  Map map3 = {
  ...map,
  ...map2,
  };
  print(map3);
}
mapCombine() {
  Map map = {
    'name': '1'
  };

  Map map2 = {
    'age': 22
  };

  Map map3 = {
  ...map,
  ...map2,
  };
  print(map3);
}
listToMap() {
  Map map = {
    'name': '1'
  };

  // 将list数据转化为map
  List<int> list = [1, 2, 3];
  Map newMap = Map.fromEntries(list.map((i) => MapEntry(i, i)));
  print(newMap);
}