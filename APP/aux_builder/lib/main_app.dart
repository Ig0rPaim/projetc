import 'package:aux_builder/home_screen/home_screen.dart';
import 'package:aux_builder/project_screen_init/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:aux_builder/planning/client_contract_screen.dart';
import 'package:aux_builder/planning/details_project.dart';
import 'package:aux_builder/buildingProject/BuildingProject.dart';


void main() {
  runApp(const aux_builder());
}

class aux_builder extends StatelessWidget {
  const aux_builder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: const Color(0xFF3F51B5),
        primaryColorDark: const Color(0xFF303F9F),
        primaryColorLight: const Color(0xFFC5CAE9),
      ),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/planning/client_contract_screen':(context) => const ClientAndContract(),
        '/planning/details_project':(context) => const DetailsOfProject(),
        '/project_screen':(context) => const ProjectScreen(),
        '/buildingProject' :(context) => const BuildingProject(),
      },
    );
  }
}
