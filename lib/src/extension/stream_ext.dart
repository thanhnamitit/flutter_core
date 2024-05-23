import 'dart:async';

extension StreamExt<T> on Stream<T> {
  StreamSubscription listenWithExtension(
    void onData(event)?, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
    void Function()? onFirstShoot,
  }) {
    int i = 0;
    return listen(
      (_) {
        onData?.call(_);
        if (i == 0) {
          onFirstShoot?.call();
        }
        i++;
      },
      onDone: onDone,
      onError: onError,
      cancelOnError: cancelOnError,
    );
  }
}
