import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuilderButtons {
  List<double> sizeOfContext(BuildContext context, double propotion) {
    Size screenSize = MediaQuery.of(context).size * propotion;
    List<double> screen = [screenSize.width, screenSize.height];
    return screen;
  }

}


class Planning extends BuilderButtons{
    bool done = false;

    // bool get done {
    //   return done;
    // }

    // set done(bool newState) => done = newState;

    Widget planning(BuildContext context) {
    // bool done;
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
        // shape: CircleBorder(),
        primary: Color(0xFF7C4DFF),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }
}


class AddNewProject extends BuilderButtons{
  Widget addNewProject(BuildContext context) {
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.1);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {},
      child: Icon(Icons.add),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Color(0xFF7C4DFF),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }
}


class Execution extends BuilderButtons{
    Widget execution(BuildContext context){
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.40);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Execução',
        style: TextStyle(fontSize: 35.0),
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Color(0xFF7C4DFF),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }
}


class TimeLine extends BuilderButtons{
    Widget timeline(BuildContext context){
    List<double> contextScreen;
    contextScreen = sizeOfContext(context, 0.4);
    double width = contextScreen[0];
    double height = contextScreen[1];
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Conograma',
        style: TextStyle(fontSize: 35.0),
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Color(0xFF7C4DFF),
        shadowColor: Color(0xFFC5CAE9),
        fixedSize: Size(width, height),
      ),
    );
  }
}