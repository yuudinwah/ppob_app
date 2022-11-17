import 'package:intl/intl.dart';

extension IntExtension on int {
  String toCurrency({String? name}) {
    return NumberFormat.currency(
      decimalDigits: 0,
      name: name ?? '',
    ).format(this);
  }

  Duration toDuration() {
    return Duration(minutes: this);
  }
}