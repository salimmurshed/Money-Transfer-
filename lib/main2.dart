import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: MyApp(),title: 'Test',));
}

class MyApp extends StatelessWidget{
  List people = [
    {"name": "Tasfiq","number": "017**11**"},
    {"name": "1Tasfiq1","number": "017**22**"},
    {"name": "2Tasfiq2","number": "017**33**"},
    {"name": "3Tasfiq3","number": "017**44**"},
    {"name": "4Tasfiq4","number": "017**55**"},
    {"name": "5Tasfiq5","number": "017**66**"},
    {"name": "6Tasfiq6","number": "017**77**"},
    {"name": "7Tasfiq7","number": "017**88**"},
    {"name": "8Tasfiq8","number": "017**99**"},
    {"name": "9Tasfiq9","number": "017**101**"},
    {"name": "sTasfiq10","number": "017**102**"},
    {"name": "wTasfiq2","number": "017**33**"},
    {"name": "eTasfiq3","number": "017**44**"},
    {"name": "rTasfiq4","number": "017**55**"},
    {"name": "tTasfiq5","number": "017**66**"},
    {"name": "yTasfiq6","number": "017**77**"},
    {"name": "aTasfiq7","number": "017**88**"},
    {"name": "sTasfiq8","number": "017**99**"},
    {"name": "dTasfiq9","number": "017**101**"},
    {"name": "fTasfiq10","number": "017**102**"},
  ];
 
 
  @override 
  
  Widget build(BuildContext context){
 
    return new MaterialApp(
      title: 'Bkash Clone',

       home: Scaffold(
         appBar: AppBar(
           title: Text("Send Money"),
           leading: Icon(Icons.arrow_back),backgroundColor: Colors.pink,
          actions: <Widget>[          
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 60,
            child: Image.asset('assets/logo1.png')
            )
          ],
         ),
         body: Align(
              alignment: Alignment.center,
              child: Container(   
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blueGrey[50], ),   
              height: MediaQuery.of(context).size.height - 100,
              width:  MediaQuery.of(context).size.width - 20,
              child: Column(
           children: <Widget>[
             Container(
               child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                    children: <Widget>[
                      Text("To"),
                    ],
                 ),
               ),
             ),
             TextField(
               decoration: InputDecoration(
                 hintText: "Enter name or number"
               ),
             ),
             Expanded(
                 child: ListView.builder(
                 itemCount: people.length,
                 itemBuilder: (BuildContext context, int index){
                   return Column(
                     children: <Widget>[
                       ListTile(
                         leading: CircleAvatar(
                           child: Text(people[index]["name"][0]),
                         ),
                         title: Text(people[index]["name"]),
                         subtitle: Text(people[index]["number"]),
                                          )
                                        ]
                                      );
                                    },),
              ),
           
           ],
         ),
              ),),
                          )
                       );
                     }
                   }
                   
                  