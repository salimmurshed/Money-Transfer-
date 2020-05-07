import 'package:flutter/material.dart';
void _BottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 200,
             width: MediaQuery.of(context).size.width,
            child: new Column(
              children: <Widget>[
               Container(
                
                 child: Align(
                   alignment: Alignment.topRight,
                   child: Row(
                 
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: <Widget>[
                 GestureDetector(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Icon(Icons.arrow_drop_down),
                 )
               ],),

                 ),
                 width: MediaQuery.of(context).size.width,
               ),
                SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                    Row(
                    children: <Widget>[
                      Container(width: MediaQuery.of(context).size.width / 4 - 5,child: Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/mr.png'), Text('01*********', textAlign: TextAlign.center,)],),),),
                      Container(width: MediaQuery.of(context).size.width / 4 - 5,child: Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/mr.png'), Text('Tasfiqul Ghani', textAlign: TextAlign.center,)],),),),
                      Container(width: MediaQuery.of(context).size.width / 4 - 5,child: Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/sm.png'), Text('Uncle', textAlign: TextAlign.center,)],),),),
                      Container(width: MediaQuery.of(context).size.width / 4 - 5,child: Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/sm.png'), Text('Indi', textAlign: TextAlign.center,)],),),),
                      
                    ]
                  ),
                  
                  //   Column(
                  //   children: <Widget>[
                  //     Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/am.png'), Text('Add Money', textAlign: TextAlign.center,)],),),
                  //     Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/am.png'), Text('Add Money', textAlign: TextAlign.center,)],),),
                  //     Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/am.png'), Text('Add Money', textAlign: TextAlign.center,)],),),
                      
                  //   ]
                  // )
                    ]
                  )
                )
                
              ],
            ),
          );
        });
  }


void main() {
  runApp(new MaterialApp(home: MyApp(),title: 'Bkash Clone 2nd',));
}

class MyApp extends StatelessWidget{
Widget build(BuildContext context){
 
    return new MaterialApp(
      title: 'Bkash Clone',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), 
                  child: AppBar(title: 
          Column(
            children: <Widget>[
              Text("Tasfiqul Ghani"),
              GestureDetector(
            child: Container(
              padding: EdgeInsets.fromLTRB(4, 1, 40, 1),
              child: Text('Tap for Balance',style: TextStyle(color: Colors.pink, ),
              
              ),
              decoration: BoxDecoration(
              border: Border.all(color: Colors.white70),color:Colors.white,borderRadius: BorderRadius.circular(18.0),
              ),
              ),
              )
            ],
          ), 
          leading:  
          CircleAvatar(
            child: ClipOval(
              child: Image.network('https://scontent.fdac15-1.fna.fbcdn.net/v/t1.0-1/c0.0.200.200a/p200x200/92209471_3119409924749395_5160504885199765504_o.jpg?_nc_cat=108&_nc_sid=7206a8&_nc_oc=AQmC2CqH8snVBSovP_Pe9RD5gDxi5L9X2RmMxicHPJO7YzW4Gdl8X0mQuAoc1pSAQm8&_nc_ht=scontent.fdac15-1.fna&oh=1046bf3766b8945c1a84f4eb55bdcea9&oe=5ED4E113',),
            ),
          ),backgroundColor: Colors.pink,
          actions: <Widget>[          
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 60,
            child: Image.asset('assets/logo1.png')
            )
          ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(5.0),child: Column(children: <Widget>[ Image.asset('assets/body/sm.png'), Text('Send Money', textAlign: TextAlign.center,)],),),
                Padding(padding: const EdgeInsets.all(5.0),child: Column(children: <Widget>[ Image.asset('assets/body/mr.png'), Text('Mobile Recharge', textAlign: TextAlign.center)],),),
                Padding(padding: const EdgeInsets.all(5.0),child: Column(children: <Widget>[ Image.asset('assets/body/co.png'), Text('Cash Out', textAlign: TextAlign.center)],),),
                Padding(padding: const EdgeInsets.all(5.0),child: Column(children: <Widget>[ Image.asset('assets/body/mp.png'), Text('Make Payment', textAlign: TextAlign.center)],),),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/am.png'), Text('Add Money', textAlign: TextAlign.center,)],),),
                Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/bp.png'), Text('Pay Bill', textAlign: TextAlign.center)],),),
                Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/ci.png'), Text('Corona Info', textAlign: TextAlign.center)],),),
                Padding(padding: const EdgeInsets.all(20.0),child: Column(children: <Widget>[ Image.asset('assets/body/m.png'), Text('More', textAlign: TextAlign.center)],),),
              ],
              ),
              
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width:  MediaQuery.of(context).size.width-20,
                        child: 
                          GestureDetector(
                           onTap: () { 
                             _BottomSheet(context);
                           }, 
                        child: Row(
                        children: <Widget>[
                          
                          Align(alignment: Alignment.bottomLeft,child: Text("My bKash"),),
                          Align(alignment: Alignment.bottomRight,child: Icon(Icons.arrow_drop_up),),
                        ],
                      ),
                      ),
                    
                    ),
                   
                    
                  ],
                ),
                GestureDetector(
                    onTap:() async {
                    final url = 'https://github.com/flutter/gallery/';
                    
                  },
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[ 
                     Container(width: MediaQuery.of(context).size.width - 20,
                     child: Image.asset('assets/body/ad.png'),
                     ),
          
                    ],
                  ),
                ),
              ],
            ), 
          ],
        ),
        )
        ),
      
    );
    }
}

