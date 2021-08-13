import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:innisfree/screens/catalog/components/content.dart';
import 'constants.dart';
import 'edit_data.dart';

class DetailData extends StatefulWidget {
  // const DetailData({ Key? key }) : super(key: key);
  List list;
  int index;
  DetailData({this.index, this.list});

  @override
  _DetailDataState createState() => _DetailDataState();
}

class _DetailDataState extends State<DetailData> {
  void deleteData() {
    var url =
        "https://uasprojectcrud.000webhostapp.com/delete_list_product.php";
    http.post(Uri.parse(url),
        body: {"idproduct": widget.list[widget.index]['id_product']});
    Fluttertoast.showToast(
        msg: "Produk " +
            widget.list[widget.index]["product_name"] +
            " Berhasil Dihapus!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Anda yakin mau menghapus produk ini? Judul Produk : '${widget.list[widget.index]['product_name']}'"),
      actions: <Widget>[
        new MaterialButton(
          child: new Text(
            "OK HAPUS!",
            style: new TextStyle(color: Colors.black),
          ),
          color: Colors.red,
          onPressed: () {
            deleteData();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new Content()),
            );
          },
        ),
        new MaterialButton(
          child: new Text(
            "CANCEL",
            style: new TextStyle(color: Colors.black),
          ),
          color: Colors.green,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        title: new Text("${widget.list[widget.index]['product_name']}"),
      ),
      body: new SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Card(
            child: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Text(
                "${widget.list[widget.index]['product_name']}",
                style: new TextStyle(fontSize: 20.0),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Image.network("${widget.list[widget.index]['product_pic']}"),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Text(
                "${widget.list[widget.index]['short_desc']}",
                style: new TextStyle(fontSize: 15.0),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("EDIT"),
                    color: Colors.green,
                    onPressed: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new Edit_Data(
                                list: widget.list, index: widget.index))),
                  ),
                  new MaterialButton(
                    child: new Text("HAPUS"),
                    color: Colors.red,
                    onPressed: () => confirm(),
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
            ],
          ),
        )),
      ),
    );
  }
}
