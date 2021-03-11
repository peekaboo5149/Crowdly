import 'package:crowdly/infrastructure/auth/auth_success_error.dart';
import 'package:crowdly/infrastructure/core/error/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static FirebaseAuth get _auth => FirebaseAuth.instance;

  Future<AuthSuccesorFailure> registerwithemailandpassword(
      String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return AuthSuccesorFailure(userCredential, AuthFailure.NULL_FAILURE);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password')
        return AuthSuccesorFailure(null, AuthFailure.WEAK_PASSWORD);
      else if (e.code == 'email-already-in-use')
        return AuthSuccesorFailure(null, AuthFailure.EMAIL_ALREADY_IN_USE);
    } catch (e) {
      return AuthSuccesorFailure(null, AuthFailure.SERVER_ERROR);
    }
  }

  Future<AuthSuccesorFailure> signinwithemailandpassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return AuthSuccesorFailure(userCredential, AuthFailure.NULL_FAILURE);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found')
        return AuthSuccesorFailure(null, AuthFailure.INVALID_EMAIL_PASSWORD);
      else if (e.code == 'wrong-password')
        return AuthSuccesorFailure(null, AuthFailure.INVALID_EMAIL_PASSWORD);
    } catch (e) {
      return AuthSuccesorFailure(null, AuthFailure.SERVER_ERROR);
    }
  }
}
