import 'package:baseapp/src/blocs/search_bloc.dart';
import 'package:baseapp/src/ui/screen/result/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _keywordController;
  SearchBloc _bloc;

  @override
  void dispose() {
    _keywordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _bloc = Provider.of<SearchBloc>(context);

    return Container(
      padding: const EdgeInsets.all(32),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _keywordController,
              decoration: InputDecoration(labelText: 'キーワードを入力してください'),
              validator: _bloc.validateKeywords,
              onChanged: (test) {
                _bloc.keywordUpdate.add(test);
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Center(
                child: RaisedButton(
                  child: Text("検索"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ResultScreen(keyword: _bloc.keyword)),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
