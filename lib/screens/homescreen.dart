import 'package:flutter/material.dart';
import 'package:macbroapp/components/maindrawer.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeState createState() {
    // TODO: implement createState
    return _HomeState();
  }

}

class _HomeState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer:Drawer(
        child: MainDrawer(),
      ),
    );
  }

}