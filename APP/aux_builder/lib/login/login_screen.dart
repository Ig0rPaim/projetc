import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TesteLogin());
}

class TesteLogin extends StatelessWidget {
  const TesteLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var form = Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              labelText: "Email",
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "digite seu emal",
              isDense: true,
              contentPadding: const EdgeInsets.all(15),
            ),
          ),

          const SizedBox(height: 10,),

          TextFormField(
            decoration: InputDecoration(
              filled: true,
              labelText: "Senha",
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "digite sua senha",
              isDense: true,
              contentPadding: const EdgeInsets.all(15),
            ),
          ),
        ],
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF23238E),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo_provisoria.png', height: 300),
              const SizedBox(height: 50,),
              form
            ],
          ),
        ),
      ),
    );
  }
}
