import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:core/core.dart';

mixin ConnectivityBlocMixin<S> on BaseCubit<S> {
  void listenToConnectivity() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      switch (result) {
        case ConnectivityResult.bluetooth:
          break;
        case ConnectivityResult.other:
          break;
        case ConnectivityResult.none:
          break;
        case ConnectivityResult.wifi:
        case ConnectivityResult.ethernet:
        case ConnectivityResult.mobile:
        case ConnectivityResult.vpn:
          onNetworkReady();
      }
    }).addToBloc(this);
  }

  void onNetworkReady() {}
}
