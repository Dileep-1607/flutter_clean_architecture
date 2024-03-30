

class AppExceptions implements Exception {

  final _message;
  final _frefix;

  AppExceptions([this._message, this._frefix]);

  String toString(){
    return '$_message $_frefix';
  }

}

class InternetException extends AppExceptions {
   InternetException([String? message]): super(message, 'No internet');
}

class RequesetTimeOut extends AppExceptions {
  RequesetTimeOut([String? message]): super(message, 'Request time out');
}

class ServerException extends AppExceptions {
  ServerException([String? message]): super(message, 'Internal Server Error');
}
class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]): super(message, 'Invalid url');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]): super(message, 'Error while communication');
}