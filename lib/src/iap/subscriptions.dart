import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qonversion_flutter/qonversion_flutter.dart';

import '../../core.dart';

part 'subscriptions.freezed.dart';

@freezed
class IAP with _$IAP {
  const IAP._();

  const factory IAP({
    @Default(Async.loading()) Async<Map<String, QOffering>> offers,
    Async<Map<String, QEntitlement>>? purchased,
    @Default(false) bool cachedIsPremium,
  }) = _IAP;

  String get offerName => 'main';

  List<QProduct> get offerNotNull => offers()?[offerName]?.products ?? [];

  bool needToRetry() {
    return offers is Fail || purchased is Fail;
  }
}
