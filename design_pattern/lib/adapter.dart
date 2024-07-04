import 'dart:convert';

// TO MERGE TWO DIFFERENT OBJECT (IN THIS CASE API DATA)

class PostAPI1 {
  String getYoutubePost() {
    return ''' 
    [
      {
        "title": "how to train your bug",
        "desc": "it's a feature"
      },
      {
        "title": "how to train your program",
        "desc": "it's a feature"
      }
    ]
    ''';
  }
}

class PostAPI2 {
  String getMediumPost() {
    return ''' 
    [
      {
        "header": "it's an article",
        "subtitle": "yoo"
      },
      {
        "header": "it's an article 2",
        "subtitle": "yoo 2"
      }
    ]
    ''';
  }
}

abstract class PostAPIAdapter {
  List<Post> getPost();
}

class Post {
  final String title; 
  final String desc;

  Post({required this.title, required this.desc}); 
}

class PostAPIAdapter1 implements PostAPIAdapter {
  final api = PostAPI1();
    
  @override
  List<Post> getPost() {
    final data = jsonDecode(api.getYoutubePost()) as List;
    return data.map((e) => Post(title: e['title'], desc: e['desc'])).toList();
  }
}

class PostAPIAdapter2 implements PostAPIAdapter {
  final api = PostAPI2();

  @override 
  List<Post> getPost() {
    final data = jsonDecode(api.getMediumPost()) as List; 
    return data.map((e) => Post(title: e['header'], desc: e['subtitle'])).toList();
  }
}

class PostAPI implements PostAPIAdapter {
  final data1 = PostAPIAdapter1();
  final data2 = PostAPIAdapter2();
  @override
  List<Post> getPost() {
    return data1.getPost() + data2.getPost();
  }
}

void main() {
  final test = PostAPI(); 
  print(test.getPost());
}