import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:invoiceninja_flutter/redux/app/app_actions.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';

class LoadStateRequest {
  LoadStateRequest(this.context);

  final BuildContext context;
}

class LoadStateSuccess {
  LoadStateSuccess(this.state);

  final AppState state;
}

class UserLoginLoaded {
  UserLoginLoaded(this.email, this.url);

  final String email;
  final String url;
}

class OAuthLoginRequest implements StartLoading {
  OAuthLoginRequest({
    @required this.completer,
    this.email,
    @required this.idToken,
    @required this.accessToken,
    @required this.serverAuthCode,
    @required this.url,
    @required this.secret,
    @required this.platform,
    @required this.oneTimePassword,
  });

  final Completer completer;
  final String email; // TODO remove this property, break up _saveAuthLocal
  final String idToken;
  final String accessToken;
  final String serverAuthCode;
  final String url;
  final String secret;
  final String platform;
  final String oneTimePassword;
}

class UserLoginRequest implements StartLoading {
  UserLoginRequest(
      {@required this.completer,
      @required this.email,
      @required this.password,
      @required this.url,
      @required this.secret,
      @required this.platform,
      @required this.oneTimePassword});

  final Completer completer;
  final String email;
  final String password;
  final String url;
  final String secret;
  final String platform;
  final String oneTimePassword;
}

class UserLoginSuccess implements StopLoading {}

class UserLoginFailure implements StopLoading {
  UserLoginFailure(this.error);

  final Object error;
}

class RecoverPasswordRequest implements StartLoading {
  RecoverPasswordRequest({
    @required this.completer,
    @required this.email,
    @required this.url,
    @required this.secret,
  });

  final Completer completer;
  final String email;
  final String url;
  final String secret;
}

class RecoverPasswordSuccess implements StopLoading {}

class RecoverPasswordFailure implements StopLoading {
  RecoverPasswordFailure(this.error);

  final Object error;
}

class UserLogout implements PersistData, PersistUI {
  UserLogout(this.context);

  final BuildContext context;
}

class UserSignUpRequest implements StartLoading {
  UserSignUpRequest({
    @required this.completer,
    @required this.email,
    @required this.password,
  });

  final Completer completer;
  final String email;
  final String password;
}

class OAuthSignUpRequest implements StartLoading {
  OAuthSignUpRequest({
    @required this.completer,
    @required this.idToken,
    @required this.accessToken,
    @required this.serverAuthCode,
  });

  final Completer completer;
  final String idToken;
  final String accessToken;
  final String serverAuthCode;
}

class UserVerifiedPassword {}
