import 'package:flutter/material.dart';
import 'package:listavariada/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Lista Variada';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // body: ListHorizontal(),
        // body: ListVertical(),
        // body: SimplePage(),
        // body: BuilderSimples()
        body: Home(),
      
      ),
    );
  }
}
