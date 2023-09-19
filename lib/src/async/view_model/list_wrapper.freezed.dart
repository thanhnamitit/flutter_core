// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListWrapper<T> {
  List<T> get data => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListWrapperCopyWith<T, ListWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListWrapperCopyWith<T, $Res> {
  factory $ListWrapperCopyWith(
          ListWrapper<T> value, $Res Function(ListWrapper<T>) then) =
      _$ListWrapperCopyWithImpl<T, $Res, ListWrapper<T>>;
  @useResult
  $Res call({List<T> data, bool hasMoreData});
}

/// @nodoc
class _$ListWrapperCopyWithImpl<T, $Res, $Val extends ListWrapper<T>>
    implements $ListWrapperCopyWith<T, $Res> {
  _$ListWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hasMoreData = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListWrapperCopyWith<T, $Res>
    implements $ListWrapperCopyWith<T, $Res> {
  factory _$$_ListWrapperCopyWith(
          _$_ListWrapper<T> value, $Res Function(_$_ListWrapper<T>) then) =
      __$$_ListWrapperCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, bool hasMoreData});
}

/// @nodoc
class __$$_ListWrapperCopyWithImpl<T, $Res>
    extends _$ListWrapperCopyWithImpl<T, $Res, _$_ListWrapper<T>>
    implements _$$_ListWrapperCopyWith<T, $Res> {
  __$$_ListWrapperCopyWithImpl(
      _$_ListWrapper<T> _value, $Res Function(_$_ListWrapper<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hasMoreData = null,
  }) {
    return _then(_$_ListWrapper<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ListWrapper<T> implements _ListWrapper<T> {
  const _$_ListWrapper({final List<T> data = const [], this.hasMoreData = true})
      : _data = data;

  final List<T> _data;
  @override
  @JsonKey()
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool hasMoreData;

  @override
  String toString() {
    return 'ListWrapper<$T>(data: $data, hasMoreData: $hasMoreData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListWrapper<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), hasMoreData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListWrapperCopyWith<T, _$_ListWrapper<T>> get copyWith =>
      __$$_ListWrapperCopyWithImpl<T, _$_ListWrapper<T>>(this, _$identity);
}

abstract class _ListWrapper<T> implements ListWrapper<T> {
  const factory _ListWrapper({final List<T> data, final bool hasMoreData}) =
      _$_ListWrapper<T>;

  @override
  List<T> get data;
  @override
  bool get hasMoreData;
  @override
  @JsonKey(ignore: true)
  _$$_ListWrapperCopyWith<T, _$_ListWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
