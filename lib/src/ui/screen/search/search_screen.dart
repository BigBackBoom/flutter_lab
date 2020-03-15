import 'package:baseapp/src/blocs/search_bloc.dart';
import 'package:baseapp/src/ui/screen/search/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<SearchBloc>(
      create: (context) => SearchBloc(),
      child: SearchPage(),
      dispose: (context, bloc) => bloc.dispose(),
    );
  }
}
