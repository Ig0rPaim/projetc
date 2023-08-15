
import 'package:aux_builder/home_screen/appBar/appBar.dart';
import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyAppBar newAppBar = const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              MyAppBar(),
              Column(children: <Widget>[],), // aqui ficaram os projetos 
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: BuilderButtons.addNewProject(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

// drawer: Drawer(
//             backgroundColor: Color.fromARGB(255, 110, 114, 136),
//             child: ListView(
//               children: <Widget>[
//                 NavigatorButtons()
//                     .navigator(context, '/project_screen', 'tela de projetos'),
//                 NavigatorButtons().navigator(
//                     context, '/planning/details_project', 'detalhes do projeto'),
//                 NavigatorButtons().navigator(context,
//                     '/planning/client_contract_screen', 'cliente e contrato'),
//               ],
//             ),
//           ),



// Padding(
//         padding: EdgeInsets.all(10.0), //usar o sizeOfContext aqui
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           // crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             Align(
//               alignment: Alignment.centerRight,
//               child: AddNewProject().addNewProject(context),
//             ),
//           ],
//         ),
//       ),