import 'package:aux_builder/controllers/login_controller.dart';
import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:aux_builder/utilities/forms.dart';
import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const TesteLogin());
// }

// class TesteLogin extends StatelessWidget {
//   const TesteLogin({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: LoginScreen());
//   }
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _controllerLogin = LoginController();

  @override
  Widget build(BuildContext context) {
    var form = Forms().formLogin(_controllerLogin);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF23238E),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView( // para não gerar erro quando o teclado subir
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logo_provisoria.png', height: 300),
                const SizedBox(height: 50,),
                form,
                const SizedBox(height: 50,),
                BuilderButtons.buttonLogin(context, _controllerLogin),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
