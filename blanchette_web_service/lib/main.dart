import 'package:flutter/material.dart';

import 'dto/artiste.dart';
import 'dto/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
List<Artiste> listeArtiste = [];

@override
void initState(){
  super.initState();
}
  TextEditingController txtInput = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Recherche d'artiste"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 25,
              child: TextField(
                controller: txtInput,
                decoration: InputDecoration(
                  hintText: "Artiste",
                ),
              ),
            ),
            Expanded(child: ListView.builder(
              itemCount: listeArtiste.length,
            itemBuilder: (context, index){
             return ListTile(title: Text('${listeArtiste[index].titre}'));
            })

            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          recherche(txtInput.text);
        },
        tooltip: 'Ajouter une tâche',
        child: const Icon(Icons.search),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }

  void recherche(String terme) async {
    listeArtiste = await Recherche(terme);
    setState(() {
      
    });
  }
}
