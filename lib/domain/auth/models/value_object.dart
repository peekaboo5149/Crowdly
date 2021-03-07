abstract class ValueObject<T> {
  const ValueObject();
  T get value;
  T get error;

  @override
  String toString() => 'ValueObject(value: $value, error: $error)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value && o.error == error;
  }

  @override
  int get hashCode => value.hashCode ^ error.hashCode;
}
