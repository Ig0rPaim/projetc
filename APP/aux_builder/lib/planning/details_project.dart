// import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../utilities/builderButtons.dart';

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
              BuilderButtons.treeButton(context, 'Leis'),
              Padding(padding: EdgeInsets.all(4.0)),
              BuilderButtons.treeButton(context, 'Plantas'),
              Padding(padding: EdgeInsets.all(4.0)),
              BuilderButtons.treeButton(context, 'Materiais e \nMão de obra'),
            ],
          ),
        ),
      ),
    );
  }
}