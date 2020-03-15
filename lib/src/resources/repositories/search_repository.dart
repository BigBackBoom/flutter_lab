import 'package:baseapp/src/models/search_repository_model.dart';
import 'package:baseapp/src/resources/api/github_api_provider.dart';

class SearchRepository {
  final githubApiProvider = GithubApiProvider();

  Future<SearchRepositoryModel> searchRepositories(String keyword) =>
      githubApiProvider.searchRepositories(keyword);
}