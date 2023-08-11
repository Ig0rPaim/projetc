// import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../builderButtons.dart';

class DetailsOfProject extends StatefulWidget {
  const DetailsOfProject({Key? key}) : super(key: key);

  @override
  State<DetailsOfProject> createState() => _DetailsOfProjectState();
}

class _DetailsOfProjectState extends State<DetailsOfProject> {
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
              ScreenWithThreeButtons().button(context, 'Leis'),
              Padding(padding: EdgeInsets.all(4.0)),
              ScreenWithThreeButtons().button(context, 'Plantas'),
              Padding(padding: EdgeInsets.all(4.0)),
              ScreenWithThreeButtons().button(context, 'Materiais e \nMão de obra'),
            ],
          ),
        ),
      ),
    );
  }
}