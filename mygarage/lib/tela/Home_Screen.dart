import 'package:flutter/material.dart';

import 'Carros_Screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Image.asset(
                "images/carro1.jpg",
                fit: BoxFit.cover,
                height: 900.0,
              ),
            ],
          ),
          Center(
            child: Text(
              "Meus Carros",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child:
              ButtonTheme(
              minWidth: 90.0,
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.white),
                ),
                color: Colors.transparent,
                child: Text(
                  "Next",
                  style:
                      TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Carros()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
