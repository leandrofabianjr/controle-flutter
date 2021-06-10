// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on LoginStoreBase, Store {
  final _$loadingAtom = Atom(name: 'LoginStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$emailAtom = Atom(name: 'LoginStoreBase.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$isEmailInvalidAtom = Atom(name: 'LoginStoreBase.isEmailInvalid');

  @override
  bool get isEmailInvalid {
    _$isEmailInvalidAtom.reportRead();
    return super.isEmailInvalid;
  }

  @override
  set isEmailInvalid(bool value) {
    _$isEmailInvalidAtom.reportWrite(value, super.isEmailInvalid, () {
      super.isEmailInvalid = value;
    });
  }

  final _$passwordAtom = Atom(name: 'LoginStoreBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isPasswordInvalidAtom =
      Atom(name: 'LoginStoreBase.isPasswordInvalid');

  @override
  bool get isPasswordInvalid {
    _$isPasswordInvalidAtom.reportRead();
    return super.isPasswordInvalid;
  }

  @override
  set isPasswordInvalid(bool value) {
    _$isPasswordInvalidAtom.reportWrite(value, super.isPasswordInvalid, () {
      super.isPasswordInvalid = value;
    });
  }

  final _$failureAtom = Atom(name: 'LoginStoreBase.failure');

  @override
  Failure? get failure {
    _$failureAtom.reportRead();
    return super.failure;
  }

  @override
  set failure(Failure? value) {
    _$failureAtom.reportWrite(value, super.failure, () {
      super.failure = value;
    });
  }

  final _$doLoginAsyncAction = AsyncAction('LoginStoreBase.doLogin');

  @override
  Future<void> doLogin() {
    return _$doLoginAsyncAction.run(() => super.doLogin());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
email: ${email},
isEmailInvalid: ${isEmailInvalid},
password: ${password},
isPasswordInvalid: ${isPasswordInvalid},
failure: ${failure}
    ''';
  }
}
