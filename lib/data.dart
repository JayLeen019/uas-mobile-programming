// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<List> getDataUser() async {
  final response = await http
      .get(Uri.parse("https://uasprojectcrud.000webhostapp.com/list_user.php"));
  return json.decode(response.body);
}

Future<List> getDataProduct() async {
  final response = await http.get(
      Uri.parse("https://uasprojectcrud.000webhostapp.com/list_product.php"));
  return json.decode(response.body);
}

Future<List> getDataReview() async {
  final response = await http.get(
      Uri.parse("https://uasprojectcrud.000webhostapp.com/list_Review.php"));
  return json.decode(response.body);
}
