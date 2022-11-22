import 'dart:developer';
import 'package:first_app/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ListProvider extends ChangeNotifier {
  List<Post> list = [];
  bool isLoading = true;

  Future getList() async {
    isLoading = true;
    var url = Uri.parse(
        "https://api-app-a161b-default-rtdb.firebaseio.com/posts.json");

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['totalItems'];
      log('Number of books about http: $itemCount.');
      List<Post> post = [];
      jsonResponse.forEach((key, value) {
        Post element = Post.fromJson(value);
        list.add(element);
      });
      list = post;
      isLoading = false;
    } else {
      log('Request failed with status: ${response.statusCode}.');
      isLoading = false;
    }
    notifyListeners();
  }

  onPressLiske(int index) {
    list[index].isliked = !list[index].isliked!;
  }
}
