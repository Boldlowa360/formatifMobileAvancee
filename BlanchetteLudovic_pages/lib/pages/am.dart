import 'package:flutter/material.dart';
import 'package:blanchetteludovic_pages/widget/tiroir.dart';

class Am extends StatefulWidget {
  const Am();

  @override
  State<Am> createState() => _Page1State();
}

class _Page1State extends State<Am> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Am"),
      ),
      drawer: Tiroir(),
      body: Column(
        children: [
          Expanded(child: Container(color:Colors.blue),flex: 6),
          Expanded(child: Container(color:Colors.green),),
          Container(color:Colors.yellow, height: 222,width:222),
          Expanded(child: Container(color:Colors.red),flex: 3),
          Expanded(child: Container(color:Colors.orange),flex:4),
        ],
      ),
    );
  }
}