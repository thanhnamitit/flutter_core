import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qonversion_flutter/qonversion_flutter.dart';

import '../../core.dart';

part 'subscriptions.freezed.dart';

@freezed
class IAP with _$IAP {
  const IAP._();

  const factory IAP({
    @Default('main') String mainOfferName,
    @Default(Async.loading()) Async<Map<String, QOffering>> offers,
    Async<Map<String, QEntitlement>>? purchased,
    @Default(false) bool cachedIsPremium,
  }) = _IAP;

  List<QProduct>? get _mainOffer => offers()?[mainOfferName]?.products;

  List<QProduct>? get _fallbackOffer => offers()?['main']?.products;

  List<QProduct> get offerNotNull => _mainOffer ?? _fallbackOffer ?? [];

  Map<String, QEntitlement> get purchasedNotNull => purchased?.call() ?? {};

  bool needToRetry() {
    return offers is Fail || purchased is Fail;
  }

  bool get everythingReady {
    return offers is Success && purchased is Success;
  }
}
