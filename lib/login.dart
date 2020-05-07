import 'package:flutter/material.dart';
import 'Utils.dart';

void main() {
  runApp(new MaterialApp(home: MyApp(),title: 'Test',));
}

class MyApp extends StatelessWidget{
 
  TextEditingController phone = new TextEditingController();
  TextEditingController pin = new TextEditingController();
  @override 
  
  Widget build(BuildContext context){
 
    return new MaterialApp(
      title: 'Bkash Clone',
  
      home: Scaffold(
        appBar: AppBar(leading: Icon(
                                  Icons.keyboard_arrow_left,
                                  color: Colors.pink),backgroundColor: Colors.white,
                                  actions: <Widget>[
                                  Container(
                                    height: 10,
                                    width: 100,
                                      child: Text("Bangla",
                                      style: TextStyle(color: Color.fromRGBO(255, 0, 102, 2),fontSize: 20),),
                                      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                      decoration: BoxDecoration(
                                      border: Border.all(width: 3,
                                      color: Colors.red),
                                      borderRadius: BorderRadius.all(
                                      Radius.circular(800), 
                                      ),
                                      color: Colors.white,
                                      ) 
                                      )
                                  ],),
        body: 
        Column(
                children: <Widget>[
                  Row(
                        children: <Widget>[    
                          Container(height: MediaQuery.of(context).size.height,width:  MediaQuery.of(context).size.width,
                          child: Stack(
                            children: <Widget>[
                                Positioned(  
                                  child: Column(
                                    children: <Widget>[
                                SizedBox(height:20),
                                SizedBox(height:20),
                                SizedBox(height:20),
                                      Align(
                                      alignment: Alignment.topLeft,
                                      child: Image.asset("assets/logo.jpg",height: 100,width: 100),
                                      ),
                                      Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(8))),
                                        height: 65,
                                        width: MediaQuery.of(context).size.width - 40,
                                        child: new TextField(
                                          controller: phone,
                                          style: TextStyle(
                                            color: Color(0xFF727c8e),
                                          ),
                                          decoration: InputDecoration(
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.white),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.white),
                                              ),
                                              labelText: "Phone",
                                              labelStyle: TextStyle(color: Color(0xFFa8aaac)),
                                              prefixIcon:
                                                  Icon(Icons.call, color: Color(0xff00bbdd))),
                                        ),
                                      ),
                                    ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(Radius.circular(8))),
                                          height: 65,
                                          width: MediaQuery.of(context).size.width - 40,
                                          child: new TextField(
                                            obscureText: true,
                                            controller: pin,
                                            style: TextStyle(
                                              color: Color(0xFF727c8e),
                                            ),
                                            decoration: InputDecoration(
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.white),
                                                ),
                                                focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.white),
                                                ),
                                                labelText: "Pin",
                                                labelStyle: TextStyle(color: Color(0xFFa8aaac)),
                                                prefixIcon:
                                                    Icon(Icons.lock, color: Color(0xff00bbdd))),
                                          ),
                                        ),
                                      ),
                                  SizedBox(height:20),
                                  Align(
                                    alignment: Alignment.bottomRight,    
                                    child: Text("Forgot Password",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(color: Color.fromRGBO(0,0,204,0.9),fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(height:20),
                                  Stack(
                                  children: <Widget>[
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: FloatingActionButton.extended(
                                    heroTag: null,
                                    backgroundColor: Color(0xff3d73dd),
                                    onPressed: () {
                                  
                                  print(phone.text);
                                  print(pin.text);
                             },
                                  label: Text(
                                    "  Login  ",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  
                                 ),
                                 
                                 ),
                                 Align(
                                    alignment: Alignment.bottomRight,
                                    child:
                                 FloatingActionButton.extended(
                                    heroTag: null,
                                    backgroundColor: Color(0xff3d73dd),
                                    onPressed: () {
                             },
                                  label: Text(
                                    "  Create new account  ",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  
                                 )
                                 ),
                                  ],
                                  )
                                  ]
                                ),
                              )
                          ]
                        ),
                    ),
                        
                      ],
                    ),
                    
                    
                       
                ]
             )
                          
                    
                )
              
              );
              }
              
            }