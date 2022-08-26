import 'package:out_space/const/app_mode.dart';
import 'package:hive/hive.dart';

class AppRepository {
  static const storageId = "globalPropBox";
  late Box _storage;

  // private constructor
  AppRepository._getInstance();
  // singleton instance
  static final AppRepository _instance = AppRepository._getInstance();

  factory AppRepository() {
    return _instance;
  }

  Future<void> initStorage() async {
    if (Hive.isBoxOpen(storageId) == false)
      _storage = await Hive.openBox(storageId);
  }

  int getAppMode() {
    return _storage.get("mode");
  }

  void setAppMode(int mode) {
    _storage.put("mode", mode);
  }
}
