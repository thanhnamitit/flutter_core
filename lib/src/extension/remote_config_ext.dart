import 'package:firebase_remote_config/firebase_remote_config.dart';

extension RemoteConfigExt on FirebaseRemoteConfig {
  int intOr(String key, {int defaultValue = 0}) {
    final result = getInt(key);
    if (result == 0) {
      return defaultValue;
    }
    return result;
  }
}
