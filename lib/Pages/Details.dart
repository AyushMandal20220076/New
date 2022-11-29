import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Descrip(),
  ),);
}

class Descrip extends StatefulWidget {
  const Descrip({Key? key}) : super(key: key);

  @override
  State<Descrip> createState() => _DescripState();
}

class _DescripState extends State<Descrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAILS",
        ),
      ),
    );
  }
}
