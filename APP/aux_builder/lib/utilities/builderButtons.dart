// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  static Widget treeButton(BuildContext context, String text){
    List<double> contextScreen;
    contextScreen = sizeOfContext(context,  0.256);
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

  static Widget twoButton(BuildContext context, String text){
    List<double> contextScreen;
    contextScreen = sizeOfContext(context,  0.39);
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

  static Widget navigator(BuildContext context, String routes, String nameButton){
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
      onPressed: () {},
      child: Icon(Icons.add),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Color(0xFF23238E),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
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