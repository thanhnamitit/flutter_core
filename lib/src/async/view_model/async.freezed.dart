// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Async<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(AppException exception) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(AppException exception)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(AppException exception)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Fail<T> value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Fail<T> value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncCopyWith<T, $Res> {
  factory $AsyncCopyWith(Async<T> value, $Res Function(Async<T>) then) =
      _$AsyncCopyWithImpl<T, $Res, Async<T>>;
}

/// @nodoc
class _$AsyncCopyWithImpl<T, $Res, $Val extends Async<T>>
    implements $AsyncCopyWith<T, $Res> {
  _$AsyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res>
    extends _$AsyncCopyWithImpl<T, $Res, _$Loading<T>>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Loading<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$Loading<T> extends Loading<T> {
  const _$Loading({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'Async<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCopyWith<T, _$Loading<T>> get copyWith =>
      __$$LoadingCopyWithImpl<T, _$Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(AppException exception) fail,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(AppException exception)? fail,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(AppException exception)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Fail<T> value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Fail<T> value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> extends Async<T> {
  const factory Loading({final T? data}) = _$Loading<T>;
  const Loading._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<T, _$Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<T, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<T> value, $Res Function(_$Success<T>) then) =
      __$$SuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessCopyWithImpl<T, $Res>
    extends _$AsyncCopyWithImpl<T, $Res, _$Success<T>>
    implements _$$SuccessCopyWith<T, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<T> _value, $Res Function(_$Success<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Success<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<T> extends Success<T> {
  const _$Success(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Async<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<T, _$Success<T>> get copyWith =>
      __$$SuccessCopyWithImpl<T, _$Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(AppException exception) fail,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(AppException exception)? fail,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(AppException exception)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Fail<T> value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Fail<T> value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> extends Async<T> {
  const factory Success(final T data) = _$Success<T>;
  const Success._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<T, _$Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailCopyWith<T, $Res> {
  factory _$$FailCopyWith(_$Fail<T> value, $Res Function(_$Fail<T>) then) =
      __$$FailCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AppException exception});
}

/// @nodoc
class __$$FailCopyWithImpl<T, $Res>
    extends _$AsyncCopyWithImpl<T, $Res, _$Fail<T>>
    implements _$$FailCopyWith<T, $Res> {
  __$$FailCopyWithImpl(_$Fail<T> _value, $Res Function(_$Fail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$Fail<T>(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$Fail<T> extends Fail<T> {
  const _$Fail(this.exception) : super._();

  @override
  final AppException exception;

  @override
  String toString() {
    return 'Async<$T>.fail(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fail<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailCopyWith<T, _$Fail<T>> get copyWith =>
      __$$FailCopyWithImpl<T, _$Fail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(AppException exception) fail,
  }) {
    return fail(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(AppException exception)? fail,
  }) {
    return fail?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(AppException exception)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Fail<T> value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Fail<T> value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Fail<T> value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class Fail<T> extends Async<T> {
  const factory Fail(final AppException exception) = _$Fail<T>;
  const Fail._() : super._();

  AppException get exception;
  @JsonKey(ignore: true)
  _$$FailCopyWith<T, _$Fail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
