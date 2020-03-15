class RepositoryModel {
  int _id;
  String _name;
  String _fullName;

  RepositoryModel(Map<String, dynamic> parsedJson) {
    _id = parsedJson['id'];
    _name = parsedJson['name'];
    _fullName = parsedJson['full_name'];
  }

  int get id => _id;

  String get name => _name;

  String get fullName => _fullName;
}