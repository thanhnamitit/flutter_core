import 'package:qonversion_flutter/qonversion_flutter.dart';

abstract class IAPRepository {
  Future<Map<String, QOffering>> getOffers();

  Future<Map<String, QEntitlement>> restoreSubscriptions();

  Future<Map<String, QEntitlement>> purchaseProduct(QProduct qProduct);

  bool get cachedPremium;
}
