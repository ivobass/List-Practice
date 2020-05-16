import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  @override
  _SimplePageState createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: ClampingScrollPhysics(),
      onPageChanged: (pageInit){
        print(pageInit);
      },
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Center(child: Text('Pag1')),
        Center(child: Text('Pag2')),
        Center(child: Text('Pag3')),
        Center(child: Text('Pag4')),
      ],
    );
  }
}
