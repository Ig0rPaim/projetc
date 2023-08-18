import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NormasRegulamentadoras extends StatelessWidget {
  const NormasRegulamentadoras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {}),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const Text('Normas Regulamentadoras'),
          ],
        ),
      ),
    );
  }
}
