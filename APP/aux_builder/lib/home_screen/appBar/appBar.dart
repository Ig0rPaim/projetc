import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';
import '/utilities/builderButtons.dart';
// C:\Users\ioliveira\Documents\project\APP\aux_builder\lib\utilities\screenElemens.dart

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<double> width_height = BuilderButtons().sizeOfContext(context, 1);
    double height = width_height[1];
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: height,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(title: Text('home Screen')),
        )
      ],
    );
  }
}
