import 'package:injectable/injectable.dart';
import 'package:qonversion_flutter/qonversion_flutter.dart';

@module
abstract class Module {
  @lazySingleton
  Qonversion get qonversion => Qonversion.getSharedInstance();
}
