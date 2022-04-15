import 'package:food_delivery/constants.dart';
import 'package:food_delivery/models/models.dart';
import 'package:mysql1/mysql1.dart';

class DatabaseRepository {
  DatabaseRepository();

  late final MySqlConnection _connection;

  Future<void> init() async {
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'pass',
      db: 'lab1',
    );
    _connection = await MySqlConnection.connect(settings);
  }

  Future<List<Map<String, dynamic>>> getList(String tableName) async {
    try {
      var results = await _connection.query('SELECT * FROM `$tableName`');
      return results.map((e) => e.fields).toList();
    } catch (e) {
      return [];
    }
  }

  Future<Map<String, dynamic>?> selectById(String tableName, int id) async {
    try {
      var result = await _connection
          .query('SELECT * FROM `$tableName` WHERE id=?', [id]);
      if (result.isNotEmpty) {
        return result.first.fields;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<bool> create(
      String tableName, int id, Map<String, dynamic> fields) async {
    try {
      var query = '''
      INSERT INTO `$tableName`
      (
        id,
        ${fields.keys.join(", ")}
      )
      VALUES(
        ?,
        ${fields.keys.map((e) => "?").join(", ")}
      )
      ''';
      await _connection.query(query, [id, ...fields.values.toList()]);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> edit(
      String tableName, int id, Map<String, dynamic> fields) async {
    try {
      var query = '''
      UPDATE `$tableName`
      SET
        ${fields.keys.map((key) => "$key=?").join(", ")}
      WHERE
        id=?
      ''';
      await _connection.query(query, [...fields.values.toList(), id]);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> delete(String tableName, int id) async {
    try {
      var query = '''
      DELETE FROM a
      USING `$tableName` as a
      WHERE a.id=?
      ''';
      await _connection.query(query, [id]);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<ProductVM>> getProductViewList() async {
    try {
      var query = '''
      SELECT 
        p.id,
        p.name,
        p.image_url,
        p.description,
        p.unit_incrementation,
        p.date_created,
        p.price_per_incrementation,
        u.name as unit,
        t.name as type,
        prod.name as producer
      FROM
        `$PRODUCT` p
        LEFT JOIN $UNIT_OF_MEASURE u ON u.id=p.unit
        LEFT JOIN $PRODUCT_TYPE t ON t.id=p.type
        LEFT JOIN $PRODUCER prod ON prod.id=p.fk_producerid
      ''';

      var results = await _connection.query(query);
      return results.map((e) => ProductVM.fromJson(e.fields)).toList();
    } catch (e) {
      return [];
    }
  }
}
