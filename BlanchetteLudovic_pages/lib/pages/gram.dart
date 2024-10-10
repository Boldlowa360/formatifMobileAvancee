import 'package:blanchetteludovic_pages/pages/am.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
class Gram extends StatefulWidget {
  const Gram({super.key});

  @override
  State<Gram> createState() => _GramState();
}

class _GramState extends State<Gram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        //automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gram"),
              MaterialButton(onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder:
                      (context)=>Am())
                );
              },
                child: Text("Retour vers Am"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
