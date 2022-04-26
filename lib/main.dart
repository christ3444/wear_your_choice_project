// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan)
  ),
  home: MyApp(),
) );

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  late String name,id, age, classe;

  getName(name){this.name = name;} 
  getId(id){ this.id= id;}
  getAge(age){this.age=age;}
  getClasse(classe){this.classe = classe;}

  createData(){
    print("created");
  }

    readData(){
    print("read");
  }

    updateData(){
    print("updated");
  }

    deleteData(){
    print("deleted");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("W Y C"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom:16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,
                  width: 2.0)
                )
                 ),
                 onChanged: (String name){
                  getName(name);
                 },
                 
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "ID",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,
                  width: 2.0)
                )
                 ),
                 onChanged: (String id){
                  getId(id);
                 },
                 
            ),
          ), 
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Age",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,
                  width: 2.0)
                )
                 ),
                 onChanged: (String age){
                  getAge(age);
                 },
                 
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Classe",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,
                  width: 2.0)
                )
                 ),
                 onChanged: (String classe){
                  getClasse(classe);
                 }, 
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: const Text("Create"),
                textColor: Colors.white,
                onPressed: (){
                  createData();
                },
              ),
              RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: const Text("Read"),
                textColor: Colors.white,
                onPressed: (){
                  readData();               
                },
              ),
                 ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: const Text("Update"),
                textColor: Colors.white,
                onPressed: (){
                  updateData();
                },
              ),
              RaisedButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: const Text("Delete"),
                textColor: Colors.white,
                onPressed: (){
                  deleteData();
                },
              )
            ],
          )
          
        ],
      ),
    ),
    );
  }
}
