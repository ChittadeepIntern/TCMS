class AppException implements Exception {

   // ignore: prefer_typing_uninitialized_variables
   final _message;
   // ignore: prefer_typing_uninitialized_variables

   AppException([this._message]);

  @override
  String toString(){
    return '$_message' ;
  }
}

class LoginException extends AppException {
  LoginException([String? message]) : super('Error during login');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message]) : super('Unauthorized to access dashboard');
}