import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage/key_storage.dart';

class LocalStorage {
  final SharedPreferences sharedPreferences;

  LocalStorage(this.sharedPreferences);

  void setCharacterId(int id) {
    sharedPreferences.setInt(DbKeyStorage.characterId, id);
  }
}
