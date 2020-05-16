import 'package:flutter/material.dart';

class ListVertical extends StatelessWidget {
  _onPressed() {
    print('Click Ok...');
  }

  Widget _listTitle() {
    return ListTile(
      leading: Container(
        width: 160.0,
        color: Colors.red,
      ),
      title: Text('Item 1'),
      subtitle: Text('200 €'),
      onTap: _onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _listTitle(),
            _listTitle(),
            _listTitle(),
            _listTitle(),
            _listTitle(),
            _listTitle(),
            _listTitle(),
          ],
        ),
      ),
    );
  }
}
