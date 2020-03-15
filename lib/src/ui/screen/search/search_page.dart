import 'package:baseapp/src/ui/screen/search/search_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Github Repo Search'),
        ),
        body: Column(
          children: <Widget>[
            SearchForm()
          ],
        ));
  }
}
