import 'package:flutter/material.dart';
import 'package:spotter/src/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spotter'), centerTitle: true),
      body: Form(
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 200, 25, 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailInputController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'email@exemplo.com',
                    labelText: 'e-mail'
                  ),
                ),
                TextFormField(
                  controller: passwordInputController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: '********',
                    labelText: 'Senha'
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      //TODO: Login com API
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MainPage())
                      );
                    },
                    child: Text('Entrar')
                )
              ],
            ),
          )
      ),
    );
  }
}
