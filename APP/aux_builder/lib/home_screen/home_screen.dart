import 'package:aux_builder/home_screen/appBar/appBar.dart';
import 'package:aux_builder/home_screen/projects/projects.dart';
import 'package:aux_builder/utilities/builderButtons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProjectsInList> listProjects = [
    ProjectsInList(nameOfProject: "Projeto 1", dateOfCreted: "10/08/2023"),
    ProjectsInList(nameOfProject: "Projeto 2", dateOfCreted: "15/08/2023"),
  ];

  void newProjects(ProjectsInList project) =>
      setState(() => listProjects.add(project));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            MyAppBar(nameOfClient: 'Dev',),
            const SizedBox(height: 5),
            Container(
              margin: EdgeInsets.all(10),
              child:
              _showItens(),
            ),
            _addNewProject(),
          ],
        ),
      ),
    );
  }

  _addNewProject() => Expanded(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: BuilderButtons.addNewProject(context),
          ),
        ],
      ),
    ),
  );

  _showItens() => ListView.separated(
    shrinkWrap: true, // Uso do shrinkWrap para evitar conflitos com o Expanded; sem isso dá erro exceção
    itemCount: listProjects.length,
    separatorBuilder: (context, index) => const SizedBox(height: 7), //SizedBox como separador
    itemBuilder: (context, index) {
      return ProjectsInList(
          nameOfProject: listProjects[index].nameOfProject,
          dateOfCreted: listProjects[index].dateOfCreted);
    },
  );

}