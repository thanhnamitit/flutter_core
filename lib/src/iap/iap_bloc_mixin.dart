import 'dart:async';

import 'package:core/core.dart';
import 'package:qonversion_flutter/qonversion_flutter.dart';

mixin IAPBlocMixin<S extends IAPState<S>> on BaseCubit<S> {
  IAPRepository get iapRepository;

  IAP get _iap => state.getIAP();

  void _newIAP(IAP input) {
    emit(state.newIAP(input));
  }

  void _newPurchasedEntitlements(Async<Map<String, QEntitlement>> input) {
    _newIAP(
      _iap.copyWith(
        purchased: input,
        cachedIsPremium: input.maybeMap(
          orElse: () => _iap.cachedIsPremium,
          success: (_) => _.data.values.isNotEmpty,
        ),
      ),
    );
  }

  void initIAP() {
    _newIAP(_iap.copyWith(cachedIsPremium: iapRepository.cachedPremium));
    restoreSubscriptions();
    getOffers();
  }

  void getOffers() {
    execute(iapRepository.getOffers()).listen((_) {
      _newIAP(_iap.copyWith(offers: _));
    });
  }

  void restoreSubscriptions() {
    execute(iapRepository.restoreSubscriptions()).listen((_) {
      _newPurchasedEntitlements(_);
    });
  }

  Future purchaseProduct(QProduct product) async {
    execute(iapRepository.purchaseProduct(product)).listen((_) {
      _newPurchasedEntitlements(_);
    });
  }
}
