import 'package:crowdly/infrastructure/core/error/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthSuccesorFailure {
  final UserCredential userCredential;
  final AuthFailure error;

  AuthSuccesorFailure(this.userCredential, this.error);
}
