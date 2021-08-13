import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:innisfree/screens/catalog/components/content.dart';

import 'constants.dart';

class Edit_Data extends StatefulWidget {
  // const Edit_Data({ Key? key }) : super(key: key);
  final List list;
  final int index;
  Edit_Data({this.list, this.index});

  @override
  _Edit_DataState createState() => _Edit_DataState();
}

class _Edit_DataState extends State<Edit_Data> {
  TextEditingController controllerTitle = new TextEditingController();
  TextEditingController controllerContent = new TextEditingController();
  TextEditingController controllerUrlImg = new TextEditingController();

  void editData() {
    var url = "https://uasprojectcrud.000webhostapp.com/edit_list_product.php";
    http.post(Uri.parse(url), body: {
      "idproduct": widget.list[widget.index]['id_product'],
      "namaProduk": controllerTitle.text,
      "deskripsi": controllerContent.text,
      "image_url": controllerUrlImg.text
    });
  }

  @override
  void initState() {
    controllerTitle = new TextEditingController(
        text: widget.list[widget.index]['product_name']);
    controllerContent = new TextEditingController(
        text: widget.list[widget.index]['short_desc']);
    controllerUrlImg = new TextEditingController(
        text: widget.list[widget.index]['product_pic']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: kPrimaryLightColor,
        title: new Text("Edit Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            new TextField(
              controller: controllerTitle,
              decoration: new InputDecoration(
                  hintText: "Isi Nama Produk Disini", labelText: "Nama Produk"),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new TextField(
              controller: controllerUrlImg,
              decoration: new InputDecoration(
                  hintText: "Isi Url Image Disini",
                  labelText: "Link Url Image"),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new TextField(
              controller: controllerContent,
              decoration: new InputDecoration(
                  hintText: "Isi Deskripsi Disini",
                  labelText: "Deskripsi Produk"),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            MaterialButton(
                child: new Text("Edit Data"),
                color: Colors.blueAccent,
                onPressed: () {
                  editData();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Content()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
