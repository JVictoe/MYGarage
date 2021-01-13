import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

class Carros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Meus Carros"),
      ),
      headerHeight: 120.0,
      frontLayer: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    color: Colors.grey[300],
                    width: 220.0,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: TextFormField(
                        decoration:
                        InputDecoration(hintText: "Pesquisar..."),
                      ),
                    ),
                  ),
                ),
                Text("Ford Mustang, 2015"),
                Image.asset(
                  "images/mustang.jpg",
                  fit: BoxFit.cover,
                  height: 100.0,
                ),
              ],
            ),
          ),
        ],
      ),
      backLayer: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Image.asset("images/carrop2.png"),
                Image.asset("images/carrop3.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
