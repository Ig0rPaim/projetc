import 'dart:math';

import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class projectScreen extends StatefulWidget {
  const projectScreen({Key? key}) : super(key: key);

  @override
  State<projectScreen> createState() => _projectScreenState();
}

class _projectScreenState extends State<projectScreen> {

  bool done(){
    if(Planning().done){
      return false;
    }else{
      return true;
    }
  }

  // double space(){
  //   List<double> contextScreen;
  //   contextScreen = BuilderButtons().sizeOfContext(context, 0.1);
  //   double width = contextScreen[0];
  //   double height = contextScreen[1];
  //   return height;

  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Drawer(backgroundColor: Color.fromARGB(255, 110, 114, 136)),
        appBar: AppBar(
        backgroundColor: Color(0xFF3F51B5),
        title: Center(
          child: Text(
            'project screen',
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: done(),
                child: Planning().planning(context),
                replacement: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ScreenWithTwoButtons().button(context, 'Cronograma'),
                    Padding(padding: EdgeInsets.all(4.0)),
                    ScreenWithTwoButtons().button(context, 'Execução'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
