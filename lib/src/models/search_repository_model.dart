import 'package:baseapp/src/models/repository_model.dart';

class SearchRepositoryModel {
  List<RepositoryModel> _results = [];

  SearchRepositoryModel.fromJson(Map<String, dynamic> parsedJson) {
    List<RepositoryModel> temp = [];
    for (int i = 0; i < parsedJson['items'].length; i++) {
      temp.add(RepositoryModel(parsedJson['items'][i]));
    }
    _results = temp;
  }

  List<RepositoryModel> get results => _results;
}

