import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    // print(await session.auth.authenticatedUserId);

    return 'Hello $name';
  }
}
