import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class IAPPreferences {
  static const _keyCachedPremium = 'iap_cached_premium';

  final SharedPreferences _preferences;

  IAPPreferences(this._preferences);

  bool get cachedPremium => _preferences.getBool(_keyCachedPremium) ?? false;

  set cachedPremium(bool value) => _preferences.setBool(
        _keyCachedPremium,
        value,
      );
}
