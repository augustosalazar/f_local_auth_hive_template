import 'package:hive/hive.dart';
import 'package:loggy/loggy.dart';

import '../../../domain/entities/user.dart';
import '../../models/user_db.dart';
import '../i_local_auth_source.dart';
import '../shared_prefs/local_preferences.dart';

class HiveSource implements ILocalAuthSource {
  final _sharedPreferences = LocalPreferences();

  @override
  Future<String> getLoggedUser() async {
    //TODO: implement getLoggedUser with shared preferences
  }

  @override
  Future<User> getUserFromEmail(email) async {
    //TODO: implement getUserFromEmail with HIVE
  }

  @override
  Future<bool> isLogged() async {
    //TODO: implement getLoggedUser with shared preferences
  }

  @override
  Future<void> logout() async {
    //TODO: implement getLoggedUser with shared preferences
  }

  @override
  Future<void> setLoggedIn() async {
    //TODO: implement getLoggedUser with shared preferences
  }

  @override
  Future<void> signup(email, password) async {
    //TODO: implement getLoggedUser with HIVE
  }
}
