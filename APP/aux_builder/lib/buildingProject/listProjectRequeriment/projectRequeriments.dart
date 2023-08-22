import 'package:aux_builder/controllers/controllerEyes.dart';
import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectRequeriment extends StatelessWidget {
  final String requeriment;

  const ProjectRequeriment({Key? key, required this.requeriment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {}),
      child: Container(
        padding: EdgeInsets.all(10), //controla o volume do container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              requeriment,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
