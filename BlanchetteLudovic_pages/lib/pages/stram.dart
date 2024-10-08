import 'package:blanchetteludovic_pages/widget/tiroir.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stram extends StatefulWidget {
  const Stram({super.key});

  @override
  State<Stram> createState() => _StramState();
}

class _StramState extends State<Stram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Stram"),
      ),
      drawer: Tiroir(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_right_alt),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }
}
