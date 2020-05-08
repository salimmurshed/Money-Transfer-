import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: ContactsList(),title: 'Test',));
}

class ContactsList extends StatefulWidget {
  static String tag = 'contactlist-page';

  @override  State<StatefulWidget> createState() {
       return new _ContactsListState();
  }
}

List<Contact> contacts = [
  Contact(name: 'aa', number: '017**'),
  Contact(name: 'ss', number: '011**'),
  Contact(name: 'dd', number: '012**'),
  Contact(name: 'ff', number: '013**'),
  Contact(name: 'gg', number: '014**'),
  Contact(name: 'hh', number: '015**'),
  Contact(name: 'jj', number: '016**'),
  Contact(name: 'kk', number: '017**'),
  Contact(name: 'll', number: '018**'),
  Contact(name: 'qq', number: '019**'),
  Contact(name: 'ww', number: '021**'),
  Contact(name: 'ee', number: '022**'),
];

class _ContactsListState extends State<ContactsList> {
  TextEditingController searchController = new TextEditingController();
  String filter;

  @override  initState() {
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  @override  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Send Money',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),backgroundColor: Colors.pink,
                    leading: Icon(Icons.arrow_back),
                    actions: <Widget>[
                      Image.asset('assets/logo1.png'),
                    ],),
        body: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(8.0),
              child: new TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search Contacts',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
            ),
            new Expanded(
              child: new ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  // if filter is null or empty returns all data                  
                  return filter == null || filter == ""                      ? ListTile(
                          title: Text(
                            '${contacts[index].name}',
                          ),
                          subtitle: Text('${contacts[index].number}'),
                          leading: new CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text(
                                  '${contacts[index].name.substring(0, 1)}')),
                          onTap: () => _onTapItem(context, contacts[index]),
                        )
                      : '${contacts[index].name}'.toLowerCase().contains(filter.toLowerCase()) || '${contacts[index].number}'.toLowerCase().contains(filter.toLowerCase())
                          ? ListTile(
                              title: RichText(text:
                                TextSpan(text:
                                '${contacts[index].name}',style: TextStyle(color: Colors.pink)),
                              ),
                              subtitle: Text('${contacts[index].number}'),
                              leading: new CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Text(
                                      '${contacts[index].name.substring(0, 1)}')),
                              onTap: () =>
                                  _onTapItem(context, contacts[index]),
                            )
                          : new Container();
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.name)));
  }
}


class Contact {
  final String name;
  final String number;

  const Contact({this.name, this.number});
}

