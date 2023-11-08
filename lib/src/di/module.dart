import 'package:injectable/injectable.dart';
import 'package:qonversion_flutter/qonversion_flutter.dart';

@module
abstract class Module {
  Qonversion get qonversion => Qonversion.getSharedInstance();
}
