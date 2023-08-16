import 'package:aux_builder/controllers/controllerEyes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectsInList extends StatelessWidget {
  final String nameOfProject;
  final String dateOfCreted;

  const ProjectsInList({
    Key? key,
    required this.nameOfProject,
    required this.dateOfCreted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {}),
      child: Container(
        padding: EdgeInsets.all(10), //controla o volume do container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GetBuilder<ControllerEyes>(
              init: ControllerEyes(),
              builder: (ControllerEyes) {
                return Text(
                   ControllerEyes.eyesValue? nameOfProject: '**********',
                  style: TextStyle(fontSize: 30),
                );
              }
            ),
            GetBuilder<ControllerEyes>(
              init: ControllerEyes(),
              builder: (ControllerEyes) {
                return Text(
                  ControllerEyes.eyesValue? dateOfCreted : "********",
                  style: TextStyle(fontSize: 15),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}