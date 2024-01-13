import 'package:postgres/postgres.dart';

class DbConnection {
  late PostgreSQLConnection _connection;

  DbConnection({
    String host = 'your_host',
    int port = 5432,
    String databaseName = 'your_database_name',
    String username = 'your_username',
    String password = 'your_password',
  }) {
    _connection = PostgreSQLConnection(
      host,
      port,
      databaseName,
      username: username,
      password: password,
    );
  }

  Future<void> openConnection() async {
    await _connection.open();
  }

  Future<void> closeConnection() async {
    await _connection.close();
  }

  PostgreSQLConnection get connection => _connection;
}
