import 'dart:math';
import 'package:bita_pod_server/src/generated/protocol.dart';

class Utils {
  static Future<void> sendSms(BackgroundInfo bg, String message) async {
    // add sender for sms
  }
  static Future<bool> sendMail(BackgroundInfo bg, String message) async {
    // add mail send feature here
    return true;
  }

  static int generateSecureRandom({int length = 6}) {
    int max = (pow(10, length) - 1).toInt();
    return Random.secure().nextInt(max);
  }
}
