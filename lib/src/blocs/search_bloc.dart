import 'package:baseapp/src/resources/repositories/search_repository.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final _keywordSubject = BehaviorSubject<String>();

  Sink<String> get keywordUpdate => _keywordSubject.sink;

  String get keyword => _keywordSubject.value;

  String validateKeywords(String key) {
    if (key.length > 0) {
      return "キーワードを入力してください";
    }
    return null;
  }

  void dispose() {
    _keywordSubject.close();
  }
}
