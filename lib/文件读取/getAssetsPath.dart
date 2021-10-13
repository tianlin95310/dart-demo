import 'dart:io';

void main(){
  String par = 'D:\\work\\Codes\\AS\\rpg_game\\assets\\images';
  getAssetsPathIfChild(par + '\\a18');
  // getAssetsPathIfChild(par + '\\skill\\mul');
  // addSprite(par + '\\skill\\skillSingle');
}

void addSprite(path){
  Directory directory = Directory(path);

  List<FileSystemEntity> files = directory.listSync();

  files.forEach((FileSystemEntity element) {
    String name = element.path;
    int index = name.indexOf('images');
    String newName = name.substring(index + 'images/'.length, name.length).replaceAll('\\', '/');
    print('skill2item.frames.add(Sprite(\'' + newName + '\'));');
  });
}
void getAssetsPathIfChild(path){
  Directory directory = Directory(path);
  List<FileSystemEntity> files = directory.listSync();
  files.forEach((FileSystemEntity element) {
    String name = element.path;
    if (FileSystemEntity.isDirectorySync(name)) {
      getAssetsPathIfChild(name);
    } else {
      int index = name.indexOf('assets');
      String newName = name.substring(index, name.length).replaceAll('\\', '/');
      print('- ' + newName);
    }
  });

}

void getAssetsPath(path){
  Directory directory = Directory(path);

  List<FileSystemEntity> files = directory.listSync();

  files.forEach((FileSystemEntity element) {
    String name = element.path;
    int index = name.indexOf('assets');
    String newName = name.substring(index, name.length).replaceAll('\\', '/');
    print('- ' + newName);
  });

}