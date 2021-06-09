import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'E-mail'),
                    onChanged: (val) => email = val,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Senha'),
                    obscureText: true,
                    onChanged: (val) => password = val,
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        print(email);
                        print(password);
                      },
                      child: Text('Entrar'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
