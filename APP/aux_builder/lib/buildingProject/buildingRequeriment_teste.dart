// import 'package:flutter/cupertino.dart';
import 'package:aux_builder/buildingProject/listProjectRequeriment/projectRequeriments.dart';
import 'package:aux_builder/home_screen/appBar/appBar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BuildingProject extends StatefulWidget {
  final String nameofProject;
  const BuildingProject({Key? key, required this.nameofProject}) : super(key: key);

  @override
  State<BuildingProject> createState() => _BuildingProjectState();
}

class _BuildingProjectState extends State<BuildingProject> {
  // widget.nameofProject;
  List<ProjectRequeriment> listOfRequeriments = [
    const ProjectRequeriment(requeriment: 'Serviços Preliminares'),
    const ProjectRequeriment(requeriment: 'Serviços indiretos'),
    const ProjectRequeriment(requeriment: 'Fundações'),
    const ProjectRequeriment(requeriment: 'SuperEstrutura'),
    const ProjectRequeriment(requeriment: 'Paredes/Vedação'),
    const ProjectRequeriment(requeriment: 'Esquadrias'),
    const ProjectRequeriment(requeriment: 'Sistema de Cobertura'),
    const ProjectRequeriment(requeriment: 'Impermeabilização'),
    const ProjectRequeriment(requeriment: 'Pavimentação'),
    const ProjectRequeriment(requeriment: 'Revestimento'),
    const ProjectRequeriment(requeriment: 'Inst. Elétrica/Eletrônica'),
    // const ProjectRequeriment(
    //     requeriment: 'Sist. de Aterramento: DPS/DR(Quadro Principal)'),
    const ProjectRequeriment(requeriment: 'Quadro de Força e Luz'),
    const ProjectRequeriment(requeriment: 'Iluminação'),
    const ProjectRequeriment(requeriment: 'Rede de Iluminação'),
    // const ProjectRequeriment(
    //     requeriment: 'Sist. de Aterramento(Quadro QFL-0)'),
    const ProjectRequeriment(requeriment: 'Instalação Hidráulica'),
    const ProjectRequeriment(requeriment: 'Incendio'),
    const ProjectRequeriment(
        requeriment: 'Sist. de Aterramento: DPS/DR(Quadro Principal)'),
    const ProjectRequeriment(requeriment: 'Sist. de Aterramento(Quadro QFL-0)'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Text(widget.nameofProject),
            MyAppBar(mensageAppBar: 'Contrua o escopo básico do projeto ${widget.nameofProject}'),
            const SizedBox(height: 5),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: _showItens(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showItens() => ListView.separated(
        shrinkWrap: true,
        itemCount: listOfRequeriments.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 7,
        ),
        itemBuilder: (context, index) => ProjectRequeriment(
            requeriment: listOfRequeriments[index].requeriment),
      );
}
