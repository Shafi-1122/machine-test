import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:machinetest/model/repo_model.dart';
import 'package:machinetest/view/utilities/utilities.dart';

class RepoProvider extends ChangeNotifier {
  late Repo repos;
  Datastatus datastatus = Datastatus.idle;
  Future<void> fetchAlbum() async {
    datastatus = Datastatus.loading;
    notifyListeners();
    final response = await http
        .get(Uri.parse('https://api.github.com/search/repositories?q=created'));

    // Appropriate action depending upon the
    // server response
    if (response.statusCode == 200) {
      print('working fineeee');
      // print/()

      repos = Repo.fromJson(json.decode(response.body));
      datastatus = Datastatus.loaded;
      notifyListeners();
      // return 0;
    } else {
      datastatus = Datastatus.failed;
      notifyListeners();
      throw Exception('Failed to load album');
    }
  }
}
