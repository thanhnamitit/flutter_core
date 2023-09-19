Result<T> runCatching<T>(T Function() block) {
  try {
    return Result.success(block());
  } catch (e) {
    return Result.failure(e);
  }
}

class Result<T> {
  final T? _value;
  final Object? _error;

  Result._(this._value, this._error);

  factory Result.success(T value) {
    return Result._(value, null);
  }

  factory Result.failure(Object error) {
    return Result._(null, error);
  }

  bool get isSuccess => _value != null;

  bool get isFailure => _error != null;

  T getOrElse(T defaultValue) {
    return _value ?? defaultValue;
  }

  Object? get error => _error;

  T get value {
    if (_value == null) {
      throw StateError("No value present");
    }
    return _value!;
  }
}
