// import 'package:aux_builder/home_screen/appBar/appBar.dart';
import 'package:aux_builder/home_screen/appBar/appBar.dart';
import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';
// import 'builderButtons.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  MyAppBar newAppBar = const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 68, 56, 102),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 110, 114, 136),
          child: ListView(
            children: <Widget>[
              NavigatorButtons()
                  .navigator(context, '/project_screen', 'tela de projetos'),
              NavigatorButtons().navigator(
                  context, '/planning/details_project', 'detalhes do projeto'),
              NavigatorButtons().navigator(context,
                  '/planning/client_contract_screen', 'cliente e contrato'),
            ],
          ),
        ),
        // appBar: AppBar(
        //   backgroundColor: Color(0xFF3F51B5),
        //   title: Center(
        //     child: Text(
        //       'HOME SCREEN',
        //       style: TextStyle(
        //         fontSize: 35.0,
        //       ),
        //     ),
        //   ),
        // ),
        body: Padding(
          padding: EdgeInsets.all(10.0), //usar o sizeOfContext aqui
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: AddNewProject().addNewProject(context),
              ),
            ],
          ),
        ));
  }
}


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