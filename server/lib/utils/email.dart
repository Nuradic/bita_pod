import 'package:bita_pod_server/src/generated/protocol.dart';
import 'package:bita_pod_server/utils/email_template.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

// sendMail() async {
//   final server = SmtpServer("mail.gumiapps.com",
//       password: "I*JFc+*BE(W7", username: "bita@gumiapps.com");

//   final message = Message()
//     ..subject = "Finish Testing"
//     ..from = "bita@gumiapps.com"
//     ..html =
//         (await EmailOtpTemplate.content).replaceFirst("{{OTP_HERE}}", "123456")
//     ..recipients.add("nuradhussen082@gmail.com");

//   print(await send(message, server));
// }

// void main() {
//   sendMail();
// }

class SendMail {
  static final _username = "bita@gumiapps.com";
  static final _password = "I*JFc+*BE(W7";
  static final _host = "mail.gumiapps.com";

  static get _server =>
      SmtpServer(_host, password: _password, username: _username);
  static sendOtp(String otp, SignUpRequest request) async {
    final content =
        (await EmailOtpTemplate.content).replaceFirst("{{OTP_HERE}}", otp);

    final message = Message()
      ..subject = "Verify your account"
      ..from = "bita@gumiapps.com"
      ..recipients.add(request.email)
      ..html = content;
    try {
      await send(message, _server);
    } catch (_) {}
  }
}
