import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:qonversion_flutter/qonversion_flutter.dart';

import '../../../core.dart';

@LazySingleton(as: IAPRepository)
class IAPRepositoryImpl extends IAPRepository {
  final Qonversion qonversion;
  final IAPPreferences _preferences;

  IAPRepositoryImpl(this.qonversion, this._preferences);

  @override
  Future<Map<String, QOffering>> getOffers() {
    return qonversion.offerings().then((e) {
      for (var offer in e.availableOfferings) {
        offer.products
            .sort((a, b) => ((a.price ?? 0.0) - (b.price ?? 0)).toInt());
      }
      final offers = e.availableOfferings;
      return {
        for (var i = 0; i < offers.length; i++) offers[i].id: offers[i],
      };
    });
  }

  @override
  Future<Map<String, QEntitlement>> purchaseProduct(QProduct qProduct) async {
    final result = await qonversion.purchaseProduct(qProduct);
    _preferences.cachedPremium = result.isNotEmpty;
    return result;
  }

  @override
  Future<Map<String, QEntitlement>> restoreSubscriptions() async {
    final result = await qonversion.restore().then((value) {
      value.removeWhere((key, value) => value.isActive == false);
      return value;
    });
    log('IAPRepositoryImpl.restoreSubscriptions');
    result.forEach((key, value) {
      log(value.id);
    });
    _preferences.cachedPremium = result.isNotEmpty;
    return result;
  }

  @override
  bool get cachedPremium => _preferences.cachedPremium;
}
