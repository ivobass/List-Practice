import 'package:flutter/material.dart';

class BuilderSimples extends StatefulWidget {
  @override
  _BuilderSimplesState createState() => _BuilderSimplesState();
}

class _BuilderSimplesState extends State<BuilderSimples> {
  PageController controller;
  @override
  void initState() {
    // ecreve inist e aparece automatico

    super.initState();
    controller = PageController(initialPage: 1);
     controller.addListener(() {
      print("pagina mudou ${controller.page.round()}");
    });
  }

  @override
  void dispose() {
    // escreve dispo e aparece automatico
 controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   
    List<String> pages = [
      "Home",
      "Favorito",
      "Conta",
     
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              controller.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOutBack);
            },
          ),
          IconButton(
            icon: Icon(Icons.layers),
            onPressed: () {
              controller.jumpToPage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOutBack);
            },
          ),
        ],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return Center(child: Text(pages[index]));
        },
      ),
       bottomNavigationBar: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return BottomNavigationBar(
            onTap: (index) {
              controller.animateToPage(index,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOutBack);
            },
            currentIndex: controller.page.round(),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  title: Text("Home"), icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  title: Text("Favoritos"), icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  title: Text("Conta"), icon: Icon(Icons.account_box)),
            ],
          );
        },
      ),
    );
  }
}
