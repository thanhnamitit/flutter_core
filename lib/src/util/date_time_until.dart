class DateTimeUtil {
  const DateTimeUtil._();

  static DateTime getStartOfToday() {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }
}
