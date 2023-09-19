import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';

void logEvent(
  String name, {
  Map<String, Object?>? parameters,
}) {
  log('Logging event $name, parameters = ${parameters.toString()}');
  FirebaseAnalytics.instance.logEvent(name: name, parameters: parameters);
}
