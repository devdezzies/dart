import 'data/multimedia.dart';

class SongBadge extends Multimedia with TitleFixer {
  String title;

  SongBadge(this.title) {
    print('One song is added to song badge');
    print(titleFixer(title));
  }
}

class MusicPlayer with Playable, Stoppable {
  MusicPlayer(String songName) {
    name = songName;
    print('One song has been added $name');
  }

  void requirementsValidator() {
    if (name != 'POV') {
      play();
    } else {
      stop();
    }
  }
}

void main() {
  var aSong = MusicPlayer('i like red');
  aSong.requirementsValidator();
  print(aSong.name);

  var anotherSong = MusicPlayer('POV');
  anotherSong.requirementsValidator();
  print(anotherSong.name);

  var songBadge = SongBadge('Country Road');
  print(songBadge.title);
}
