import 'package:bita_pod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ShopEndpoint extends Endpoint {
  Future<Shop> createShop(Session session, Shop shop) async {
    if (shop.ownerId != await session.auth.authenticatedUserId) {
      throw EndpointException(
          message: "you dont have permission todo this", code: 400);
    }
    final addressId = await Address.db.insertRow(session, shop.address!);
    shop.addressId = addressId.id;

    return Shop.db.insertRow(session, shop);
  }

  Future<List<Shop>> getMyShops(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    return Shop.db.find(session, where: (t) => t.ownerId.equals(userId));
  }

  Future<List<Shop>> suggestedShops(Session session) async {
    // final userId = await session.auth.authenticatedUserId;
    return Shop.db.find(session);
  }

  Future<Shop> updateShop(Session session, Shop shop) async {
    if (shop.id == null) {
      throw EndpointException(code: 400, message: "Shop not found");
    }
    final userId = await session.auth.authenticatedUserId;
    final shopdb = await Shop.db.findById(session, shop.id!);
    if (shopdb == null) {
      throw EndpointException(message: "Shop Not Found", code: 404);
    }
    if (shopdb.ownerId == userId) {
      throw EndpointException(
          message: "You don't have permission on this shop", code: 403);
    }
    return Shop.db.updateRow(session, shop);
  }

  @override
  Future<void> streamOpened(StreamingSession session) async {
    print("Connected");
    session.messages.addListener("channelName", (message) {});
  }

  @override
  Future<void> streamClosed(StreamingSession session) async {}

  @override
  Future<void> sendStreamMessage(
      StreamingSession session, SerializableEntity message) async {}

  @override
  Future<void> handleStreamMessage(
      StreamingSession session, SerializableEntity message) async {
    print(message);
  }
}
