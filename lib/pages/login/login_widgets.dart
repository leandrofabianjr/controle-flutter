import 'package:controle_app/pages/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends StatelessWidget {
  final store = LoginStore();

  @override
  Widget build(BuildContext context) {
    print(store.failure?.message?.isNotEmpty ?? false);
    final theme = Theme.of(context);
    final errorTextStyle = theme.textTheme.subtitle1?.copyWith(
      color: theme.errorColor,
    );
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                child: Observer(
                  builder: (_) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          errorText:
                              store.isEmailInvalid ? 'E-mail inválido' : null,
                        ),
                        onChanged: (val) => store.email = val,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          errorText: store.isPasswordInvalid
                              ? 'Senha muito curta'
                              : null,
                        ),
                        obscureText: true,
                        onChanged: (val) => store.password = val,
                      ),
                      SizedBox(height: 16),
                      if (store.failure?.message?.isNotEmpty ?? false)
                        Text(
                          store.failure!.message!,
                          style: errorTextStyle,
                        ),
                      SizedBox(height: 16),
                      Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: store.doLogin,
                          child: Text('Entrar'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
