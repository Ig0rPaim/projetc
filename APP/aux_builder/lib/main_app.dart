import 'package:aux_builder/home_screen.dart';
import 'package:aux_builder/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:aux_builder/planning/client_contract_screen.dart';
import 'package:aux_builder/planning/details_project.dart';

void main() {
  runApp(aux_builder());
}

class aux_builder extends StatelessWidget {
  const aux_builder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Color(0xFF3F51B5),
        primaryColorDark: Color(0xFF303F9F),
        primaryColorLight: Color(0xFFC5CAE9),
        accentColor: Color(0xFF7C4DFF),
      ),
      home: DetailsOfProject(),
      // routes:,
    );
  }
}
