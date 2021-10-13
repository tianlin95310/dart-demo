import 'dart:io';

void main() {
  // renameFile('D:\\文档\\porn\\raw\\Maps\\passage', 'passage');
  // renameDir('D:\\work\\Codes\\AS\\rpg_game\\assets\\images\\a18\\achar', 'fem');
  // renameDir('D:\\文档\\porn\\raw\\角色\\anim\\blow1', 'v');
}

renameDir(String path, String preName) {
  int position = 1;
  Directory directory = Directory(path);
  directory.listSync().forEach((element) {
    String str_index = '${position++}'.padLeft(3, '0');
    String dirName = path + '\\' + preName + str_index;
    print(dirName);
    element.rename(dirName);
  });
}

renameFile(String path, String preName) {
  int position = 1;
  Directory directory = Directory(path);
  directory.listSync().forEach((element) {
    String name = element.path;
    int index = name.lastIndexOf(RegExp(r'\.'));
    String type = name.substring(index, name.length);
    String str_index = '${position++}';
    String actName =
        directory.path + '\\' + preName + str_index.padLeft(3, '0') + type;
    print(actName);
    element.rename(actName);
  });
}
