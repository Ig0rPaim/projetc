import 'package:aux_builder/buildingProject/buildingName.dart';
import 'package:aux_builder/buildingProject/buildingRequeriment.dart';
import 'package:aux_builder/home_screen/home_screen.dart';
import 'package:aux_builder/login/login_screen.dart';
import 'package:aux_builder/project_screen_init/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:aux_builder/planning/client_contract_screen.dart';
import 'package:aux_builder/planning/details_project.dart';
// import 'package:aux_builder/buildingProject/buildingRequeriment_teste.dart';

void main() {
  runApp(const AuxBuilder());
}

class AuxBuilder extends StatelessWidget {
  const AuxBuilder({Key? key}) : super(key: key);

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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(), 
        '/buildingName':(context) => const BuildingName(),
        '/home_screen':(context) => const HomeScreen(),
        '/planning/client_contract_screen': (context) => const ClientAndContract(),
        '/planning/details_project': (context) => const DetailsOfProject(),
        '/project_screen': (context) => const ProjectScreen(),
        '/buildingRequeriment': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map;
          return BuildingRequeriment(nameofProject: args['name of Project']);  
        },
        // '/buildingProject':(context) => const BuildingProject(),
      },
    );
  }
}
