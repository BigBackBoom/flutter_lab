import 'package:baseapp/src/models/repository_model.dart';
import 'package:baseapp/src/models/search_repository_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {

  final RepositoryModel model;

  ResultItem({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = model.id;
    final name = model.name;
    final fullName = model.fullName;

    return Container(
      padding: EdgeInsets.all(12),
      decoration: new BoxDecoration(
          border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey[400]))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("ID: $id"),
          Text("Name: $name"),
          Text("Full Name: $fullName")
        ],
      ),
    );
  }
}
