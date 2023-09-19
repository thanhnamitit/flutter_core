extension ListExtension<T> on List<T?> {
  T? getOrNull(int index) {
    return index < 0 || index >= length ? null : toList()[index];
  }

  List<T> filterNotNull() => where((e) => e != null).map((e) => e!).toList();

  int fistIndexWhere(bool Function(T) condition) {
    for (var i = 0; i < length; i++) {
      if (condition(this[i] as T)) {
        return i;
      }
    }
    return -1;
  }
}
