import 'package:redux_app/models/app_state.dart';
import 'package:redux_app/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action){
  return AppState(
    isLoading: false,
    count: counterReducer(state.count, action)
  );
}