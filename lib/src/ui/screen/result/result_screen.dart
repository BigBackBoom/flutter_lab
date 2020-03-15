import 'package:baseapp/src/blocs/result_bloc.dart';
import 'package:baseapp/src/ui/screen/result/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {

  final String keyword;

  ResultScreen({Key key, @required this.keyword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ResultBloc>(
      create: (context) => ResultBloc(keyword),
      child: ResultPage(),
      dispose: (context, bloc) => bloc.dispose(),
    );
  }
}