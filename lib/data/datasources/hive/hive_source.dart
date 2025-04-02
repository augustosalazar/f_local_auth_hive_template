import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:loggy/loggy.dart';

import '../../../domain/entities/user.dart';
import '../../models/user_db.dart';
import '../i_local_auth_source.dart';
import '../shared_prefs/local_preferences.dart';

class HiveSource implements ILocalAuthSource {
  final _sharedPreferences = LocalPreferences();
  final String boxName;

  Future<HiveSource> init() async {
    Hive.init('./');
    await Hive.initFlutter();
    Hive.registerAdapter(UserDbAdapter());
    await Hive.openBox(boxName);
    logInfo("Box opened $boxName ${await Hive.boxExists(boxName)}");
    return this;
  }

  HiveSource(this.boxName) {
    logInfo("HiveSource constructor called for $boxName");
  }

  @override
  Future<String> getLoggedUser() async {
    //TODO: implement getLoggedUser with shared preferences
    return "ToBe implemented";
  }

  @override
  Future<User> getUserFromEmail(email) async {
    //TODO: implement getUserFromEmail with HIVE
    throw UnimplementedError();
  }

  @override
  Future<bool> isLogged() async {
    //TODO: implement isLogged with shared preferences
    // on error throw "User not found";
    return false;
  }

  @override
  Future<void> logout() async {
    //TODO: implement logout with shared preferences
  }

  @override
  Future<void> setLoggedIn() async {
    //TODO: implement setLoggedIn with shared preferences
  }

  @override
  Future<void> signup(email, password) async {
    //TODO: implement signup with HIVE
    // on error throw "User already exists";
    throw UnimplementedError();
  }
}
