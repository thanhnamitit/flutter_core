import 'package:qonversion_flutter/qonversion_flutter.dart';

export 'iap_bloc_mixin.dart';
export 'iap_preferences.dart';
export 'iap_state.dart';
export 'repository/iap_repository.dart';
export 'subscriptions.dart';

void configIAP(String projectKey) {
  final config = QonversionConfigBuilder(
    projectKey,
    QLaunchMode.subscriptionManagement,
  ).build();
  Qonversion.initialize(config);
}
