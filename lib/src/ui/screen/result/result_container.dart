import 'package:baseapp/src/blocs/result_bloc.dart';
import 'package:baseapp/src/models/search_repository_model.dart';
import 'package:baseapp/src/ui/screen/result/result_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultContainer extends StatefulWidget {
  @override
  ResultContainerState createState() => ResultContainerState();
}

class ResultContainerState extends State<ResultContainer> {
  ResultBloc _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc = Provider.of<ResultBloc>(context);
    return StreamBuilder(
      stream: _bloc.resultStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          SearchRepositoryModel model = snapshot.data as SearchRepositoryModel;
          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: model.results.length,
            itemBuilder: (BuildContext context, int index) {
              return ResultItem(model: model.results[index]);
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
