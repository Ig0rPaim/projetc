// import 'package:flutter/cupertino.dart';
import 'package:aux_builder/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuilderButtons {
  bool donePlanning = true;

  static planning(BuildContext context) {
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.5);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Planejamento',
        style: TextStyle(fontSize: 35.0),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF7C4DFF),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }

  static List<double> sizeOfContext(BuildContext context, double propotion) {
    Size screenSize = MediaQuery.of(context).size * propotion;
    List<double> screen = [screenSize.width, screenSize.height];
    return screen;
  }

  static Widget treeButton(BuildContext context, String text) {
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.256);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 35.0),
      ),
      style: ElevatedButton.styleFrom(
        // shape: CircleBorder(),
        primary: Color(0xFF7C4DFF),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }

  static Widget twoButton(BuildContext context, String text) {
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.39);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 35.0),
      ),
      style: ElevatedButton.styleFrom(
        // shape: CircleBorder(),
        primary: Color(0xFF23238E),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }

  static Widget navigator(
      BuildContext context, String routes, String nameButton) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routes);
      },
      child: Text(nameButton),
    );
  }

  static Widget addNewProject(BuildContext context) {
      List<double> contextScreen;
      contextScreen = sizeOfContext(context, 0.1);
      double width = contextScreen[0];
      double height = contextScreen[1];
      return ElevatedButton(
        onPressed: () {
          try {
            Navigator.of(context).pushNamed('/buildingName');
          } catch (e, stackTrace) {
            // Lidar com a exceção aqui (por exemplo, imprimir o erro ou mostrar uma mensagem de erro)
            print("Erro na navegação: $e");
            print("StackTrace: $stackTrace");
          }
        },
        child: Icon(Icons.add),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          primary: Color(0xFF23238E),
          shadowColor: Color(0xFFC5CAE9),
          fixedSize: Size(width, height),
        ),
      );
  }

  static Widget buttonLogin(BuildContext context, LoginController controllerLogin) {
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.15);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {
        controllerLogin.auth().then((result) {
          if (result) {
            print('Sucess');
            Navigator.of(context).pushNamed('/home_screen');
          } else {
            print('!!!!!!error!!!!!!');
          }
        });
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(height, width),
      ),
      child: const Text(
        'Entrar',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  static Widget buttonProx(BuildContext context, String nameofProject) {
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.15);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {
        String teste = nameofProject;
        Navigator.of(context).pushNamed('/buildingRequeriment', arguments: {'name of Project': nameofProject});
        // print('!!!!!!!!!!!!!${teste}!!!!!!!!!!!!!!');
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(height, width),
      ),
      child: const Text(
        'Próximo',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

}

// class ScreenWithTwoButtons extends BuilderButtons{
//     Widget button(BuildContext context, String text){
//     List<double> contextScreen;
//     contextScreen = sizeOfContext(context,  0.39);
//     double width = contextScreen[0];
//     double height = contextScreen[1];
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 35.0),
//       ),
//       style: ElevatedButton.styleFrom(
//         // shape: CircleBorder(),
//         primary: Color(0xFF7C4DFF),
//         shadowColor: Color(0xFFC5CAE9),
//         fixedSize: Size(width, height),
//       ),
//     );
//   }
// }


// class ScreenWithThreeButtons extends BuilderButtons{
//     Widget button(BuildContext context, String text){
//     List<double> contextScreen;
//     contextScreen = sizeOfContext(context,  0.256);
//     double width = contextScreen[0];
//     double height = contextScreen[1];
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 35.0),
//       ),
//       style: ElevatedButton.styleFrom(
//         // shape: CircleBorder(),
//         primary: Color(0xFF7C4DFF),
//         shadowColor: Color(0xFFC5CAE9),
//         fixedSize: Size(width, height),
//       ),
//     );
//   }
// }


// class Planning extends BuilderButtons{
//     bool donePlanning = true;
//     Widget planning(BuildContext context) {
//       List<double> contextScreen;
//       contextScreen = sizeOfContext(context, 0.5);
//       double width = contextScreen[0];
//       double height = contextScreen[1];
//       return ElevatedButton(
//         onPressed: () {},
//         child: Text(
//           'Planejamento',
//           style: TextStyle(fontSize: 35.0),
//         ),
//         style: ElevatedButton.styleFrom(
//           primary: Color(0xFF7C4DFF),
//           shadowColor: Color(0xFFC5CAE9),
//           fixedSize: Size(width, height),
//         ),
//       );
//   }
// }


// class AddNewProject extends BuilderButtons{
//   Widget addNewProject(BuildContext context) {
//     List<double> contextScreen;
//     contextScreen = sizeOfContext(context, 0.1);
//     double width = contextScreen[0];
//     double height = contextScreen[1];
//     return ElevatedButton(
//       onPressed: () {},
//       child: Icon(Icons.add),
//       style: ElevatedButton.styleFrom(
//         shape: CircleBorder(),
//         primary: Color(0xFF23238E),
//         shadowColor: Color(0xFFC5CAE9),
//         fixedSize: Size(width, height),
//       ),
//     );
//   }
// }


// class NavigatorButtons{
//   Widget navigator(BuildContext context, String routes, String nameButton){
//     return ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, routes);
//               },
//               child: Text(nameButton),
//             );
//   }
// }


// class Execution extends BuilderButtons{
//     Widget execution(BuildContext context){
//     List<double> contextScreen;
//     contextScreen = sizeOfContext(context, 0.469);
//     double width = contextScreen[0];
//     double height = contextScreen[1];
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(
//         'Execução',
//         style: TextStyle(fontSize: 35.0),
//       ),
//       style: ElevatedButton.styleFrom(
//         // shape: CircleBorder(),
//         primary: Color(0xFF7C4DFF),
//         shadowColor: Color(0xFFC5CAE9),
//         fixedSize: Size(width, height),
//       ),
//     );
//   }
// }


// class TimeLine extends BuilderButtons{
//     Widget timeline(BuildContext context){
//     List<double> contextScreen;
//     contextScreen = sizeOfContext(context, 0.469);
//     double width = contextScreen[0];
//     double height = contextScreen[1];
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(
//         'Conograma',
//         style: TextStyle(fontSize: 35.0),
//       ),
//       style: ElevatedButton.styleFrom(
//         // shape: CircleBorder(),
//         primary: Color(0xFF7C4DFF),
//         shadowColor: Color(0xFFC5CAE9),
//         fixedSize: Size(width, height),
//       ),
//     );
//   }
// }