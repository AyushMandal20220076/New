import 'package:flutter/material.dart';
import 'package:sutt_project/Pages/Details.dart';
import 'pages/Home.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (Context) => ProductLst(),
      '/detail': (Context) => const Descrip(),
    },
  ),);
}
