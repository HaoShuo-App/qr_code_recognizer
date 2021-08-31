
import 'dart:async';

import 'package:flutter/services.dart';

class QrCodeRecognizer {
  static const MethodChannel _channel =
      const MethodChannel('qr_code_recognizer');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
