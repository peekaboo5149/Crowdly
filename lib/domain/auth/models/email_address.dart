import 'value_object.dart';

class EmailAddress extends ValueObject<String> {
  final String value;
  final String error;

  const EmailAddress._(this.value, this.error);

  factory EmailAddress(String input) {
    assert(input != null);
    const emailRegex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (RegExp(emailRegex).hasMatch(input))
      return EmailAddress._(input, null);
    else
      return EmailAddress._(null, "Invalid Email");
  }
}
