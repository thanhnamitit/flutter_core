// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_list_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncListWrapper<T> {
  Async<List<T>> get data => throw _privateConstructorUsedError;
  Async<List<T>>? get fetching => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AsyncListWrapperCopyWith<T, AsyncListWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncListWrapperCopyWith<T, $Res> {
  factory $AsyncListWrapperCopyWith(
          AsyncListWrapper<T> value, $Res Function(AsyncListWrapper<T>) then) =
      _$AsyncListWrapperCopyWithImpl<T, $Res, AsyncListWrapper<T>>;
  @useResult
  $Res call({Async<List<T>> data, Async<List<T>>? fetching, bool hasMoreData});

  $AsyncCopyWith<List<T>, $Res> get data;
  $AsyncCopyWith<List<T>, $Res>? get fetching;
}

/// @nodoc
class _$AsyncListWrapperCopyWithImpl<T, $Res, $Val extends AsyncListWrapper<T>>
    implements $AsyncListWrapperCopyWith<T, $Res> {
  _$AsyncListWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? fetching = freezed,
    Object? hasMoreData = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Async<List<T>>,
      fetching: freezed == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as Async<List<T>>?,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncCopyWith<List<T>, $Res> get data {
    return $AsyncCopyWith<List<T>, $Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncCopyWith<List<T>, $Res>? get fetching {
    if (_value.fetching == null) {
      return null;
    }

    return $AsyncCopyWith<List<T>, $Res>(_value.fetching!, (value) {
      return _then(_value.copyWith(fetching: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AsyncListWrapperCopyWith<T, $Res>
    implements $AsyncListWrapperCopyWith<T, $Res> {
  factory _$$_AsyncListWrapperCopyWith(_$_AsyncListWrapper<T> value,
          $Res Function(_$_AsyncListWrapper<T>) then) =
      __$$_AsyncListWrapperCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Async<List<T>> data, Async<List<T>>? fetching, bool hasMoreData});

  @override
  $AsyncCopyWith<List<T>, $Res> get data;
  @override
  $AsyncCopyWith<List<T>, $Res>? get fetching;
}

/// @nodoc
class __$$_AsyncListWrapperCopyWithImpl<T, $Res>
    extends _$AsyncListWrapperCopyWithImpl<T, $Res, _$_AsyncListWrapper<T>>
    implements _$$_AsyncListWrapperCopyWith<T, $Res> {
  __$$_AsyncListWrapperCopyWithImpl(_$_AsyncListWrapper<T> _value,
      $Res Function(_$_AsyncListWrapper<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? fetching = freezed,
    Object? hasMoreData = null,
  }) {
    return _then(_$_AsyncListWrapper<T>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Async<List<T>>,
      fetching: freezed == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as Async<List<T>>?,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AsyncListWrapper<T> extends _AsyncListWrapper<T> {
  const _$_AsyncListWrapper(
      {required this.data, this.fetching, this.hasMoreData = true})
      : super._();

  @override
  final Async<List<T>> data;
  @override
  final Async<List<T>>? fetching;
  @override
  @JsonKey()
  final bool hasMoreData;

  @override
  String toString() {
    return 'AsyncListWrapper<$T>(data: $data, fetching: $fetching, hasMoreData: $hasMoreData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AsyncListWrapper<T> &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, fetching, hasMoreData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AsyncListWrapperCopyWith<T, _$_AsyncListWrapper<T>> get copyWith =>
      __$$_AsyncListWrapperCopyWithImpl<T, _$_AsyncListWrapper<T>>(
          this, _$identity);
}

abstract class _AsyncListWrapper<T> extends AsyncListWrapper<T> {
  const factory _AsyncListWrapper(
      {required final Async<List<T>> data,
      final Async<List<T>>? fetching,
      final bool hasMoreData}) = _$_AsyncListWrapper<T>;
  const _AsyncListWrapper._() : super._();

  @override
  Async<List<T>> get data;
  @override
  Async<List<T>>? get fetching;
  @override
  bool get hasMoreData;
  @override
  @JsonKey(ignore: true)
  _$$_AsyncListWrapperCopyWith<T, _$_AsyncListWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
