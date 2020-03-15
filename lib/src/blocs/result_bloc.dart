import 'package:baseapp/src/models/search_repository_model.dart';
import 'package:baseapp/src/resources/repositories/search_repository.dart';
import 'package:rxdart/rxdart.dart';

class ResultBloc {
  final _repository = SearchRepository();
  final _keywordSubject = BehaviorSubject<String>();
  final _result = BehaviorSubject<SearchRepositoryModel>();

  Stream<SearchRepositoryModel> get resultStream => _result.stream;

  Sink<String> get keywordUpdate => _keywordSubject.sink;

  String get keyword => _keywordSubject.value;

  ResultBloc(String keyword) {
    keywordUpdate.add(keyword);
    _repository.searchRepositories(keyword).then((value) {
      _result.add(value);
    });
  }

  void dispose() {
    _keywordSubject.close();
    _result.close();
  }
}
