import 'package:flutter/material.dart';
import 'package:listavariada/buildersimples.dart';

import 'package:listavariada/listhorizontal.dart';
import 'package:listavariada/listvertical.dart';

import 'package:listavariada/simplepage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                title: Text('Lista Horizontal'),
                subtitle: Text('Click aqui'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListHorizontal(),
                    ),
                  );
                }),
            ListTile(
                leading: Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                title: Text('Lista Vertical'),
                subtitle: Text('Click aqui'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListVertical(),
                    ),
                  );
                }),
            ListTile(
                leading: Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                title: Text('PageView Simples'),
                subtitle: Text('Click aqui'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SimplePage()));
                }),
            ListTile(
                leading: Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                title: Text('PageBuilder Completo'),
                subtitle: Text('Click aqui'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BuilderSimples()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
