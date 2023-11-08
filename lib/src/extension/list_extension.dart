extension ListExtension<T> on List<T?> {
  T? getOrNull(int index) {
    return index < 0 || index >= length ? null : toList()[index];
  }

  List<T> filterNotNull() => where((e) => e != null).map((e) => e!).toList();

  List<T> joinInMiddle(T item) {
    final input = this;
    final result = <T>[];
    for (var i = 0; i < length; i++) {
      if (input[i] == null) break;
      result.add(input[i]!);
      if (i == length - 1) break;
      result.add(item);
    }
    return result;
  }

  int fistIndexWhere(bool Function(T) condition) {
    for (var i = 0; i < length; i++) {
      if (condition(this[i] as T)) {
        return i;
      }
    }
    return -1;
  }
}
