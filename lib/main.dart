import 'package:flutter/material.dart';
import 'package:redux/redux.dart';                              
import 'package:flutter_redux/flutter_redux.dart';              
import 'package:redux_app/pages/home_page.dart';
import 'package:redux_app/models/app_state.dart';
import 'package:redux_app/reducers/app_reducer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String title = "Me Suite";

  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    middleware: []
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
      title: title,
      home: HomePage(title),
    ),
    );
  }
}