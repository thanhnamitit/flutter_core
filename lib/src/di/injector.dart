import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final di = GetIt.instance..allowReassignment = true;

@injectableInit
Future configureDI() async {
  return di.init();
}
