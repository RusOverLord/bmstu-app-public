import 'dart:developer' as developer;
import 'package:bbmstu_app/src/constants/constants.dart';

const l = Logger();

class Logger {
  const Logger();

  void v(String message) => developer.log(message.customFormate());

  void d(String message) => developer.log('🐛 $message'.customFormate());

  void i(String message) => developer.log('💡 $message'.customFormate());

  void w(String message) => developer.log('⚠ $message'.customFormate());

  void e(String message, {StackTrace? stackTrace}) => developer.log('⛔ $message'.customFormate(), stackTrace: stackTrace);

  void wtf(String message) => developer.log('👾 $message'.customFormate());
}

extension on String {
  String customFormate() => truncate().newLine();

  String truncate() {
    if (enableTruncate && length > maxLength) {
      return substring(0, maxLength);
    }

    return this;
  }

  String newLine() {
    if (addNewLine) {
      return this + '\n';
    }

    return this;
  }
}
