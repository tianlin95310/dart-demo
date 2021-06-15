import 'dart:io';

void main() {
  rename("D:\\文档\\porn\\img\\ic", 'ic');
}

rename(String path, String preName) {
  int position = 1;
  Directory directory = Directory(path);
  directory.listSync().forEach((element) {
    String name = element.path;
    int index = name.lastIndexOf(RegExp(r'\.'));
    String type = name.substring(index, name.length);
    String str_index = '${position++}';
    String actName = directory.path + '\\' + preName + str_index.padLeft(2, '0') + type;
    print(actName);
    element.rename(actName);
  });
}
