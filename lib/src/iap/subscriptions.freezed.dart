// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscriptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IAP {
  String get mainOfferName => throw _privateConstructorUsedError;
  Async<Map<String, QOffering>> get offers =>
      throw _privateConstructorUsedError;
  Async<Map<String, QEntitlement>>? get purchased =>
      throw _privateConstructorUsedError;
  bool get cachedIsPremium => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IAPCopyWith<IAP> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAPCopyWith<$Res> {
  factory $IAPCopyWith(IAP value, $Res Function(IAP) then) =
      _$IAPCopyWithImpl<$Res, IAP>;
  @useResult
  $Res call(
      {String mainOfferName,
      Async<Map<String, QOffering>> offers,
      Async<Map<String, QEntitlement>>? purchased,
      bool cachedIsPremium});

  $AsyncCopyWith<Map<String, QOffering>, $Res> get offers;
  $AsyncCopyWith<Map<String, QEntitlement>, $Res>? get purchased;
}

/// @nodoc
class _$IAPCopyWithImpl<$Res, $Val extends IAP> implements $IAPCopyWith<$Res> {
  _$IAPCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainOfferName = null,
    Object? offers = null,
    Object? purchased = freezed,
    Object? cachedIsPremium = null,
  }) {
    return _then(_value.copyWith(
      mainOfferName: null == mainOfferName
          ? _value.mainOfferName
          : mainOfferName // ignore: cast_nullable_to_non_nullable
              as String,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as Async<Map<String, QOffering>>,
      purchased: freezed == purchased
          ? _value.purchased
          : purchased // ignore: cast_nullable_to_non_nullable
              as Async<Map<String, QEntitlement>>?,
      cachedIsPremium: null == cachedIsPremium
          ? _value.cachedIsPremium
          : cachedIsPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncCopyWith<Map<String, QOffering>, $Res> get offers {
    return $AsyncCopyWith<Map<String, QOffering>, $Res>(_value.offers, (value) {
      return _then(_value.copyWith(offers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncCopyWith<Map<String, QEntitlement>, $Res>? get purchased {
    if (_value.purchased == null) {
      return null;
    }

    return $AsyncCopyWith<Map<String, QEntitlement>, $Res>(_value.purchased!,
        (value) {
      return _then(_value.copyWith(purchased: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IAPCopyWith<$Res> implements $IAPCopyWith<$Res> {
  factory _$$_IAPCopyWith(_$_IAP value, $Res Function(_$_IAP) then) =
      __$$_IAPCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mainOfferName,
      Async<Map<String, QOffering>> offers,
      Async<Map<String, QEntitlement>>? purchased,
      bool cachedIsPremium});

  @override
  $AsyncCopyWith<Map<String, QOffering>, $Res> get offers;
  @override
  $AsyncCopyWith<Map<String, QEntitlement>, $Res>? get purchased;
}

/// @nodoc
class __$$_IAPCopyWithImpl<$Res> extends _$IAPCopyWithImpl<$Res, _$_IAP>
    implements _$$_IAPCopyWith<$Res> {
  __$$_IAPCopyWithImpl(_$_IAP _value, $Res Function(_$_IAP) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainOfferName = null,
    Object? offers = null,
    Object? purchased = freezed,
    Object? cachedIsPremium = null,
  }) {
    return _then(_$_IAP(
      mainOfferName: null == mainOfferName
          ? _value.mainOfferName
          : mainOfferName // ignore: cast_nullable_to_non_nullable
              as String,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as Async<Map<String, QOffering>>,
      purchased: freezed == purchased
          ? _value.purchased
          : purchased // ignore: cast_nullable_to_non_nullable
              as Async<Map<String, QEntitlement>>?,
      cachedIsPremium: null == cachedIsPremium
          ? _value.cachedIsPremium
          : cachedIsPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IAP extends _IAP with DiagnosticableTreeMixin {
  const _$_IAP(
      {this.mainOfferName = 'main',
      this.offers = const Async.loading(),
      this.purchased,
      this.cachedIsPremium = false})
      : super._();

  @override
  @JsonKey()
  final String mainOfferName;
  @override
  @JsonKey()
  final Async<Map<String, QOffering>> offers;
  @override
  final Async<Map<String, QEntitlement>>? purchased;
  @override
  @JsonKey()
  final bool cachedIsPremium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IAP(mainOfferName: $mainOfferName, offers: $offers, purchased: $purchased, cachedIsPremium: $cachedIsPremium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IAP'))
      ..add(DiagnosticsProperty('mainOfferName', mainOfferName))
      ..add(DiagnosticsProperty('offers', offers))
      ..add(DiagnosticsProperty('purchased', purchased))
      ..add(DiagnosticsProperty('cachedIsPremium', cachedIsPremium));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAP &&
            (identical(other.mainOfferName, mainOfferName) ||
                other.mainOfferName == mainOfferName) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.purchased, purchased) ||
                other.purchased == purchased) &&
            (identical(other.cachedIsPremium, cachedIsPremium) ||
                other.cachedIsPremium == cachedIsPremium));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, mainOfferName, offers, purchased, cachedIsPremium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAPCopyWith<_$_IAP> get copyWith =>
      __$$_IAPCopyWithImpl<_$_IAP>(this, _$identity);
}

abstract class _IAP extends IAP {
  const factory _IAP(
      {final String mainOfferName,
      final Async<Map<String, QOffering>> offers,
      final Async<Map<String, QEntitlement>>? purchased,
      final bool cachedIsPremium}) = _$_IAP;
  const _IAP._() : super._();

  @override
  String get mainOfferName;
  @override
  Async<Map<String, QOffering>> get offers;
  @override
  Async<Map<String, QEntitlement>>? get purchased;
  @override
  bool get cachedIsPremium;
  @override
  @JsonKey(ignore: true)
  _$$_IAPCopyWith<_$_IAP> get copyWith => throw _privateConstructorUsedError;
}
