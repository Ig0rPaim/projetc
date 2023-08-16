import 'package:aux_builder/controllers/controllerEyes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyAppBar extends StatefulWidget {
  String nameOfClient;

  MyAppBar({
    Key? key,
    required this.nameOfClient,
  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF23238E),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _opitions(),
            ],
          ),
          const SizedBox(height: 10),
          _welcome(widget.nameOfClient),
        ],
      ),
    );
  }

  _profile() => GestureDetector(
        onTap: () async {},
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Color.fromARGB(255, 81, 81, 214),
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
          GetBuilder<ControllerEyes>(
            init: ControllerEyes(),
            builder: (ControllerEyes) {
              return IconButton(
                onPressed: () => ControllerEyes.visible(),
                icon: Icon(
                  ControllerEyes.eyesValue? MdiIcons.eyeOutline : MdiIcons.eyeOff,
                  color: Colors.white,
                ),
              );
            }
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