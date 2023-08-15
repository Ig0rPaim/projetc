import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  String nameOfClient = 'Igor';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF23238E),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // _drawer_navegaitor(),
              _profile(),
              _opitions(),
            ],
          ),
          const SizedBox(height: 20),
          _welcome(nameOfClient),
        ],
      ),
    );
  }

  _profile() => GestureDetector(
        onTap: () async {},
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Color.fromARGB(255, 81, 81, 214),
            // color:  Color.fromARGB(255, 68, 56, 102),
          ),
          child: IconButton(
            onPressed: () async {},
            icon: Icon(
              MdiIcons.account,
              color: Colors.white,
            ),
          ),
        ),
      );


  _opitions() => Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.eyeOutline,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.helpCircleOutline,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_add_alt_1,
              color: Colors.white,
            ),
          ),
        ],
      );

  _welcome(String nameOfClient) => Container(
        margin: EdgeInsets.only(left: 20, bottom: 20),
        alignment: Alignment.centerLeft,
        child: Text(
          'Olá, $nameOfClient',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      );

}
