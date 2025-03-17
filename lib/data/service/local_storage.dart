import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage/key_storage.dart';

class LocalStorage {
  final SharedPreferences sharedPreferences;

  LocalStorage(this.sharedPreferences);

  List<int> getCharacterIds() {
    List<String> characterIds =
        sharedPreferences.getStringList(DbKeyStorage.characterId) ?? [];
    return characterIds.map(int.parse).toSet().toList();
  }

  void setCharacterId(int id) {
    List<String> characterIds =
        sharedPreferences.getStringList(DbKeyStorage.characterId) ?? [];
    characterIds.add(id.toString());
    sharedPreferences.setStringList(DbKeyStorage.characterId, characterIds);
  }

  void deleteCharacterId(int id) {
    List<String> characterIds =
        sharedPreferences.getStringList(DbKeyStorage.characterId) ?? [];
    characterIds.removeWhere((item) => item == id.toString());
    sharedPreferences.setStringList(DbKeyStorage.characterId, characterIds);
  }
}
