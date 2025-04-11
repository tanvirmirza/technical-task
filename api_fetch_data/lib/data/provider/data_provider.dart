import 'dart:convert';
import 'package:api_fetch_data/data/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';

class PostProvider extends ChangeNotifier {
  List<User> _posts = [];
  bool isLoading = false;

  List<User> get posts => _posts;

  Future<void> fatchUsers() async {
    isLoading = true;

    try {
      final response =
          await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

      if (response.statusCode == 200) {
        final List jsonData = json.decode(response.body);
        _posts = jsonData.map((json) => User.fromJson(json)).toList();

        final box = Hive.box<User>('postsBox');
        await box.clear();
        for (var post in _posts) {
          box.put(post.id, post);
        }
      }
    } catch (e) {
      print("Error fetching: $e");
      _loadFromLocal(); 
    }

    isLoading = false;
    notifyListeners();
  }

  void _loadFromLocal() {
    final box = Hive.box<User>('postsBox');
    _posts = box.values.toList();
  }
}
