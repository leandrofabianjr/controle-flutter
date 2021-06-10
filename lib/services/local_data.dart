import 'package:controle_app/models/failure.dart';
import 'package:localstorage/localstorage.dart';

const _LOCAL_STORAGE_KEY = 'controle_app';

class LocalData {
  late LocalStorage _storage;

  Future<LocalData> build() async {
    _storage = new LocalStorage(_LOCAL_STORAGE_KEY);
    if (!await _storage.ready) {
      throw Failure(message: 'Problema ao criar sessão');
    }
    return this;
  }

  get ready => _storage.ready;

  String? get token {
    return _storage.getItem('token');
  }

  set token(String? token) {
    _storage.setItem('token', token);
  }
}
