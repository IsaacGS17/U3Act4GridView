import 'package:flutter/material.dart';

void main() => runApp(MyPicsApp());

class MyPicsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'GridView', debugShowCheckedModeBanner: false, home: new PaginaPrincipal(title: 'Galeria de Imagenes de Granados')); //Fin de materialapp
  } //Fin de widget
} //Fin de clase mypicsapp

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} //Fin de clase paginaprincipal

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(18),
      ), //Fin de gridview
    ); //Fin de scaffold
  } //Fin de widget
} //Fin de clase paginaprincipalstate

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.jpg' : 'images/image${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    ); //Fin de container
  } //Fin de index
      ); //Fin de list container
  return containers;
} //Fin de list widget