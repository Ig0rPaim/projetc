import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../builderButtons.dart';

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
        backgroundColor: Color.fromARGB(255, 68, 56, 102),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ScreenWithTwoButtons().button(context, 'Cliente/Contrato'),
              Padding(padding: EdgeInsets.all(4.0)),
              ScreenWithTwoButtons().button(context, 'Projeto'),
            ],
          ),
        ),
      ),
    );
  }
}