import 'dart:convert';

import 'package:baseapp/src/env/endpoints.dart';
import 'package:baseapp/src/models/search_repository_model.dart';
import 'package:http/http.dart';

class GithubApiProvider {
  Client client = Client();

  Future<SearchRepositoryModel> searchRepositories(String keyword) async {
    final String base = Endpoints.githubBaseUrl;
    final String endpoint = "search/repositories?q=$keyword+in:name&sort=stars";

    final response = await client.get("$base$endpoint");

    if (response.statusCode == 200) {
      return SearchRepositoryModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Search failed");
    }
  }
}
