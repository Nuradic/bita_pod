import 'package:bita_pod_server/src/endpoints/seeder.dart';
import 'package:bita_pod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class CatagoryBrandEndpoint extends Endpoint {
  Future<List<Catagory>> createCatagories(Session session) async {
    // await insertData(session);

    return <Catagory>[];
  }

  Future<List<Catagory>> getCatagories(Session session) =>
      Catagory.db.find(session);

  Future<List<Catagory>> getMainCatagories(Session session) async {
    return Catagory.db
        .find(session, where: (t) => t.subcatagories.count() >= 1);
  }

  Future<List<Brand>> createBrands(Session session) async {
    final cat = await Catagory.db.findFirstRow(session);
    final brands = ["Dior", "Nike", "Lous Vutton", "Fila"];
    return Brand.db.insert(
        session,
        brands
            .map((brand) => Brand(name: brand, desc: "", catagoryId: cat!.id!))
            .toList());
  }

  Future<List<Brand>> getBrands(Session session) => Brand.db.find(
        session,
        include: Brand.include(
          catagory: Catagory.include(),
        ),
      );
}
