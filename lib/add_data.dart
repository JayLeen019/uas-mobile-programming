import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'constants.dart';

class Add_Data extends StatefulWidget {
  // const Add_Data({ Key? key }) : super(key: key);

  @override
  _Add_DataState createState() => _Add_DataState();
}

class _Add_DataState extends State<Add_Data> {
  TextEditingController controllerTitle = new TextEditingController();
  TextEditingController controllerContent = new TextEditingController();
  TextEditingController controllerUrlImg = new TextEditingController();

  void addData() {
    var url = "https://uasprojectcrud.000webhostapp.com/add_list_product.php";
    http.post(Uri.parse(url), body: {
      "namaProduk": controllerTitle.text,
      "deskripsi": controllerContent.text,
      "image_url": controllerUrlImg.text
    });

    Fluttertoast.showToast(
        msg: "Produk Baru berhasil ditambahkan. Cek di Menu Utama!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryLightColor,
          title: Text("Tambah Produk"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.30),
              child: TextField(
                controller: controllerTitle,
                decoration: new InputDecoration(
                    hintText: "Isi Nama Produk Disini...",
                    labelText: "NamaProduk"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.30),
              child: TextField(
                controller: controllerContent,
                decoration: new InputDecoration(
                    hintText: "Isi Deskripsi Produk Disini...",
                    labelText: "Deskripsi Produk"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.30),
              child: TextField(
                controller: controllerUrlImg,
                decoration: new InputDecoration(
                    hintText: "Isi URL Gambar Produk Disini...",
                    labelText: "URL Gambar"),
              ),
            ),
            MaterialButton(
              child: Text("Simpan Data"),
              onPressed: () {
                addData();
              },
            )
          ],
        ),
      ),
    );
  }
}
