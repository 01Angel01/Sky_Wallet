import 'package:intl/intl.dart';

String getSelectDateButtonTitle(date) {
  date ??= DateTime.now();

  return DateFormat('EE, d MMM yyyy').format(date);
}

String getMonthView(date) {
  date ??= DateTime.now();

  return DateFormat('MMM yyyy').format(date);
}

String getMessageResponseFromObject(val) {
  var res = "";

  if (val is String) {
    return val;
  } else {
    var emailErr = val['email'];
    var passErr = val['password'];

    if (emailErr != null) {
      res += "${emailErr.join('\n')}";
    }
    if (passErr != null) {
      res += "${passErr.join('\n')}";
    }

    return res;
  }
}