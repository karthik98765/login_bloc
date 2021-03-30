import 'dart:async';
import 'validator.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}

