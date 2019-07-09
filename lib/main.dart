import 'package:flutter/material.dart';
import 'package:redux/redux.dart';                              
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_app/middleware/auth_middleware.dart';              
import 'package:redux_app/pages/home_page.dart';
import 'package:redux_app/models/app_state.dart';
import 'package:redux_app/reducers/app_reducer.dart';
import 'package:redux_logging/redux_logging.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String title = "Redux App";

  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    middleware: []
      ..addAll(createAuthMiddleware())
      ..add(LoggingMiddleware.printer()),
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