import 'package:aux_builder/home_screen/appBar/appBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utilities/builderButtons.dart';
import '../utilities/forms.dart';

class BuildingName extends StatefulWidget {
  const BuildingName({Key? key}) : super(key: key);

  @override
  State<BuildingName> createState() => _BuildingNameState();
}

class _BuildingNameState extends State<BuildingName> {
  // String name
  TextEditingController controller = TextEditingController();
  // Future<String> name = await controller.text as Future<String>;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MyAppBar(mensageAppBar: 'Digite o nome do projeto'),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              child: Forms().formNameOfProject(controller),
            ),
            SizedBox(height: 30),
            BuilderButtons.buttonProx(context, controller.text),
          ],
        ),
      ),
    );
  }
}
