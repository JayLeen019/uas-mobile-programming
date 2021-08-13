import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

import '../../../add_data.dart';
import '../../../constants.dart';
import '../../../detail_data.dart';

class Content extends StatefulWidget {
  // const Content({ Key? key }) : super(key: key);

  final String initialRoute;
  Content({this.initialRoute});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Future<List> getData() async {
    final response = await http.get(
        Uri.parse("https://uasprojectcrud.000webhostapp.com/list_product.php"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    var _myData = getData();
    FutureOr onGoBack(dynamic value) {
      _myData = getData();
      setState(() {});
    }

    void handleClick(String value, BuildContext context) {
      switch (value) {
        case 'Tambah Data':
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Add_Data()))
              .then(onGoBack);
          break;
        case 'Keluar':
          break;
      }
    }

    return Scaffold(
        body: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text("Item Catalog"),
                    backgroundColor: kPrimaryLightColor,
                    actions: [
                      PopupMenuButton<String>(onSelected: (String choice) {
                        handleClick(choice, context);
                      }, itemBuilder: (BuildContext contetext) {
                        return {'Tambah Data', 'Keluar'}.map((String choice) {
                          return PopupMenuItem(
                              value: choice, child: Text(choice));
                        }).toList();
                      }),
                    ],
                  ),
                  body: new FutureBuilder<List>(
                      future: _myData,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ? new ItemList(
                                list: snapshot.data,
                              )
                            : new Center(
                                child: CircularProgressIndicator(),
                              );
                      }),
                )));
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
            padding: const EdgeInsets.all(10.0),
            child: new GestureDetector(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new DetailData(list: list, index: i))),
              child: new Card(
                  child: new ListTile(
                title: new Text(list[i]['product_name']),
                subtitle: new Text(list[i]['short_desc']),
                leading: new Image.network(list[i]['product_pic'],
                    width: 100, fit: BoxFit.contain),
              )),
            ),
          );
        });
  }
}
