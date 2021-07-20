import 'dart:io';

import 'package:skillbox_http/presentation/core/constants/strings/error.dart';

String exceptionHandler(Exception exception) {
  if (exception is SocketException) {
    switch (exception.osError?.errorCode) {
      case 8:
        return ErrorStrings.noInternetConntection;
      default:
        return ErrorStrings.somethingWentWrong;
    }
  }

  return ErrorStrings.somethingWentWrong;
}
