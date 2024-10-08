import 'package:flutter/material.dart';
import 'package:blanchetteludovic_pages/pages/stram.dart';
import 'package:blanchetteludovic_pages/pages/gram.dart';
import 'package:blanchetteludovic_pages/main.dart';

import '../pages/am.dart';
class Tiroir extends StatelessWidget {
  const Tiroir({super.key});

  @override
  Widget build(BuildContext context) {
    String? username = "Ludovic 2012878";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              "${username.toString()}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit_rounded),
            title: Text("Am"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>Am()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit_rounded),
            title: Text("Stram"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>Stram()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit_rounded),
            title: Text("Gram"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>Gram()));
            },
          ),
        ],
      ),
    );
  }
}