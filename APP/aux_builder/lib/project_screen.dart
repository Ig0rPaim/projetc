import 'dart:math';

import 'package:aux_builder/builderButtons.dart';
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
        backgroundColor: Color.fromARGB(255, 68, 56, 102),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: done(),
                child: Planning().planning(context),
                replacement: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    ScreenWithTwoButtons().button(context, 'Cronograma'),
                    // TimeLine().timeline(context),
                    Padding(padding: EdgeInsets.all(4.0)),
                    // Execution().execution(context)
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
