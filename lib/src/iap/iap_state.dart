import 'package:core/core.dart';

abstract class IAPState<S> {
  IAP getIAP();

  S newIAP(IAP input);
}
