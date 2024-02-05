class Multimedia {}

mixin Playable { // it will like "copying-pasting" all the properties to the attached class
  String? name;

  void play(){
    print('You can play $name');
  }
}

mixin Stoppable {
  String? name;

  void stop(){
    print('You have to stop $name');
  }
}

mixin TitleFixer on Multimedia { // only can be used on a class Multimedia or its offspring
  String titleFixer(String songName) {
    return songName.toUpperCase();
  }
}