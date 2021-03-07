import 'value_object.dart';

class Password extends ValueObject<String> {
  final String value;
  final String error;

  Password._(this.value, this.error);

  factory Password(String input) {
    assert(input != null);
    if (input.length > 6)
      return Password._(input, null);
    else
      return Password._(null, "Password too short");
  }
}
