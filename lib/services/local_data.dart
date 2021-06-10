import 'package:localstorage/localstorage.dart';

const _LOCAL_STORAGE_KEY = 'controle_app';

class LocalData {
  late LocalStorage _storage;
  LocalData() {
    _storage = new LocalStorage(_LOCAL_STORAGE_KEY);
  }

  get ready => _storage.ready;

  String? get token {
    return _storage.getItem('token');
  }

  set token(String? token) {
    _storage.setItem('token', token);
  }
}
