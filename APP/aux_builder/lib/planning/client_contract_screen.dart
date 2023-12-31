import 'package:flutter/material.dart';
import '../utilities/builderButtons.dart';

class ClientAndContract extends StatefulWidget {
  const ClientAndContract({Key? key}) : super(key: key);

  @override
  State<ClientAndContract> createState() => _ClientAndContractState();
}

class _ClientAndContractState extends State<ClientAndContract> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF3F51B5),
        title: Center(
          child: Text(
            'HOME SCREEN',
            style: TextStyle(
              fontSize: 35.0,
            ),
          ),
        ),
      ),
        backgroundColor: Color.fromARGB(255, 68, 56, 102),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuilderButtons.twoButton(context, 'Cliente/Contrato'),
              Padding(padding: EdgeInsets.all(4.0)),
              BuilderButtons.twoButton(context, 'Projeto'),
            ],
          ),
        ),
      ),
    );
  }
}