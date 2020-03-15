import 'package:baseapp/src/ui/screen/result/result_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Result'),
        ),
        body: Container(
          child: ResultContainer(),
        )
    );
  }
}
