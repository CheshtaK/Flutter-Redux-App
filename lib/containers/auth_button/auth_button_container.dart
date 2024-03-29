import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_app/containers/auth_button/google_auth_button.dart';
import 'package:redux/redux.dart';
import 'package:redux_app/actions/auth_actions.dart';
import 'package:redux_app/models/app_state.dart';

class GoogleAuthButtonContainer extends StatelessWidget {
  GoogleAuthButtonContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _ViewModel vm) {
        return GoogleAuthButton(
          buttonText: vm.buttonText,
          onPressedCallback: vm.onPressedCallback,
        );
      },
    );
  }
}

class _ViewModel {
  final String buttonText;
  final Function onPressedCallback;

  _ViewModel({this.onPressedCallback, this.buttonText});

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
        buttonText:
        store.state.currentUser != null ? 'Log Out' : 'Log in with Google',
        onPressedCallback: () {
          if (store.state.currentUser != null) {
            store.dispatch(LogOut());
          } else {
            store.dispatch(LogIn());
          }
        });
  }
}