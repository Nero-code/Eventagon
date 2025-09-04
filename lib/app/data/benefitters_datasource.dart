import 'package:drift/drift.dart';
import 'package:vollect/app/data/database.dart';

class BenefittersDatasource {
  final AppDatabase _database;

  const BenefittersDatasource({required AppDatabase database})
      : _database = database;

  Future<List<Beneficiary>> getAllBenefitters() async {
    return await _database.select(_database.beneficiarys).get();
  }

  Future<void> insertBenefitter(BeneficiarysCompanion i) async {
    await _database
        .into(_database.beneficiarys)
        .insert(i, onConflict: DoUpdate((old) => i));
  }

  Future<void> updateBenefitter(BeneficiarysCompanion u) async {
    await _database.update(_database.beneficiarys).replace(u);
  }

  Future<void> deleteBenefitter(BeneficiarysCompanion d) async {
    await _database.delete(_database.beneficiarys).delete(d);
  }
}
