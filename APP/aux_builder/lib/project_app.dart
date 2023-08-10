import 'package:aux_builder/builderButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProjectApp extends StatefulWidget {
  const ProjectApp({Key? key}) : super(key: key);

  @override
  State<ProjectApp> createState() => _ProjectAppState();
}

class _ProjectAppState extends State<ProjectApp> {

  bool done(){
    if(Planning().done){
      return false;
    }else{
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 56, 102),
      body: Column(
        children: [
          Visibility(
            visible: done(),
            child: Row(
              children: [
                Planning().planning(context),
              ],
            ),
            replacement: Column(
              children: [
                Row(
                  children: [
                    TimeLine().timeline(context),
                    Execution().execution(context),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
