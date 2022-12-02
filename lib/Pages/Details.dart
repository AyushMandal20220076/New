import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math';
void main(){
  runApp(const MaterialApp(
    home: Descrip(),
  ),);
}

class Descrip extends StatefulWidget {
  const Descrip({Key? key}) : super(key: key);

  @override
  State<Descrip> createState() => _DescripState();
}

class _DescripState extends State<Descrip> {
  int Rand = Random().nextInt(101);
  double percentage = 0;
  int TotalStars = 5;
  double stars = 0;
  @override
  Widget build(BuildContext context) {
    percentage = Rand/100;
    stars = percentage*5;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("Details",
            style: TextStyle(
              color: Colors.purpleAccent,
              fontSize: 50,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),),
      ),
      body: Column(
          children: [Image.asset('images/gradient.webp',
          scale: 0.5,),
            SizedBox(height: 20,),
            Row(
              children: [CircularPercentIndicator(
                  animation: true,
                    radius: 60,
                lineWidth: 10,
                percent: percentage,
                progressColor: Colors.purpleAccent,
                backgroundColor: Colors.purple.shade900,
                circularStrokeCap: CircularStrokeCap.round,
                center:
                  Text("$stars\nstars",
                  style: TextStyle(
                    color: Colors.purpleAccent.shade200,
                    fontSize: 30,
                  ),),
                ),
                SizedBox(width: 50,),
                Icon(Icons.offline_bolt_outlined,
                color: Colors.grey,
                size:100,
                ),
                Icon(Icons.refresh,
                  color: Colors.grey,
                  size:100,
                )
              ],),
            SizedBox(height: 90,),
            Container(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: const [
                    Text('Date',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),),
                    Text('1-12-22',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('23-11-22',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('19-11-22',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('8-11-22',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                  ],),
                  Column(children: const [
                    Text('Price Discount',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('25%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('27%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('19%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('12%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                  ],),
                  Column(children: const [
                    Text('Company',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('Amazon',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('Flipcart',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('Logitech',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                    Text('MDC',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),),
                  ],),
                ],),

            ),
          ],),
    );
  }
}
