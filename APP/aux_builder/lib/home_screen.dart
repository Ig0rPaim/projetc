import 'package:aux_builder/builderButtons.dart';
import 'package:flutter/material.dart';
// import 'builderButtons.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 68, 56, 102),
        drawer: Drawer(backgroundColor: Color.fromARGB(255, 110, 114, 136)),
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
          ),
        );
  }
}
