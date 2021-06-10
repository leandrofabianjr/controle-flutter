import 'package:controle_app/models/failure.dart';
import 'package:controle_app/services/controle_api.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  bool loading = true;

  @observable
  String? email;

  @observable
  bool isEmailInvalid = false;

  @observable
  String? password;

  @observable
  bool isPasswordInvalid = false;

  @observable
  Failure? failure;

  @action
  Future<void> checkLoggedUser() async {
    loading = true;
  }

  @action
  Future<void> doLogin() async {
    failure = null;
    isEmailInvalid = email?.isEmpty ?? true;
    isPasswordInvalid = password?.isEmpty ?? true;

    if (isEmailInvalid || isPasswordInvalid) return;

    try {
      final token = await ControleApi.login(
        username: email!,
        password: password!,
      );
      print(token.access);
    } on Failure catch (ex) {
      failure = ex;
    } catch (e) {
      failure = Failure.unknownError();
      print(e);
    }
  }
}
