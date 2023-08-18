import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuildingProject extends StatefulWidget {
  const BuildingProject({Key? key}) : super(key: key);

  @override
  State<BuildingProject> createState() => _BuildingProjectState();
}

class _BuildingProjectState extends State<BuildingProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          color: Colors.red,
          child: Text('teste'),
        ),
      ),
    );
  }
}
