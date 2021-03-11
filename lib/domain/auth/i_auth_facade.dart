import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'models/email_address.dart';
import 'models/password.dart';

abstract class IAuthFacade {
  Future<AuthCredential> registerwithemailandpassword(
      {@required EmailAddress emailAddress, @required Password password});
  Future<AuthCredential> signinwithemailandpassword(
      {@required EmailAddress emailAddress, @required Password password});
}
