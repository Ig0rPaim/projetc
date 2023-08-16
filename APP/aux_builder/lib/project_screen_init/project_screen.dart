import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProjectScreen(),
      );
  }
}


class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {

  bool done(){
    if(BuilderButtons().donePlanning){
      return false;
    }else{
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF23238E),
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
                child: BuilderButtons.planning(context),
                replacement: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BuilderButtons.twoButton(context, 'Cronograma'),
                    Padding(padding: EdgeInsets.all(4.0)),
                    BuilderButtons.twoButton(context, 'Execução'),
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