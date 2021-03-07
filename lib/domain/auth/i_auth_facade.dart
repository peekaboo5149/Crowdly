import 'package:flutter/foundation.dart';

import 'models/email_address.dart';
import 'models/password.dart';

abstract class IAuthFacade {
  Future<bool> registerwithemailandpassword(
      {@required EmailAddress emailAddress, @required Password password});
  Future<bool> signinwithemailandpassword(
      {@required EmailAddress emailAddress, @required Password password});
}
