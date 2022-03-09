import 'package:intl/intl.dart';

class CommonUtils {
  static String? dateFormat(String? pattern, DateTime? date) {
    DateFormat format = DateFormat(
      pattern,
    );
    String? sDate;
    if (date != null) sDate = format.format(date);
    return sDate ?? null;
  }
}
