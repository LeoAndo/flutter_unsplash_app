import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/// create the folder and returnes its path
Future<String> initDatabase(String dbName) async {
  final databasePath = await getDatabasesPath();
  final path = join(databasePath, dbName);
  if (await Directory(dirname(path)).exists() == false) {
    try {
      await Directory(dirname(path)).create(recursive: true);
    } catch (e) {
      print(e);
    }
  }
  return path;
}
