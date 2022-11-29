import 'package:flutter/material.dart';
import 'package:sutt_project/Pages/Details.dart';

void main() {
  runApp(MaterialApp(
    home: ProductLst(),
  ));
}
class ProductLst extends StatefulWidget {
  const ProductLst({Key? key}) : super(key: key);

  @override
  State<ProductLst> createState() => _ProductLstState();
}

class _ProductLstState extends State<ProductLst> {

  int count5 = 1;
  int count4 = 1;
  int count3 = 1;
  int count2 = 1;
  int count1 = 1;

  int BsPrice5 = 112860;
  int BsPrice4 = 7899;
  int BsPrice3 = 83199;
  int BsPrice2 = 1050;
  int BsPrice1 = 699;

  String order1 = 'pending';
  String order2 = 'pending';
  String order3 = 'pending';
  String order4 = 'pending';
  String order5 = 'pending';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Orders',
          style: TextStyle(
              fontSize: 45,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order No. 1',
                          style: TextStyle(
                              color: Colors.grey
                          ),),

                        Row(children: [
                          Icon(Icons.access_time_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("$order1",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: () {
                          setState(() {
                            order1 = "Accepted";
                          });
                          },
                              icon: Icon(Icons.add_box_rounded),
                          color: Colors.white,),
                          IconButton(onPressed: () {
                            setState(() {
                              order1 = "Rejected";
                            });
                          },
                            icon: Icon(Icons.add),
                            color: Colors.white,)
                        ],),


                        Row(children: [
                          Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("Rs $BsPrice1",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: () {
                            Navigator.pushNamed(context, '/detail');
                          }, icon: Icon(Icons.account_tree_outlined,
                          color: Colors.white,))
                        ],),

                        Row(children: [
                          IconButton(onPressed: () {
                            setState(() {
                              count1 += 1;
                              BsPrice1 = BsPrice1+699;
                            });
                          },
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("× $count1",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  count1 -=1;
                                  BsPrice1 = BsPrice1-699;
                                });
                              } ,
                              child: Text("⊝",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                ),)
                          ),
                        ],)
                      ],),
                    Image.asset('images/mouse.jpeg',scale: 1.5,),

                  ],),
              ),

              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order No. 2',
                          style: TextStyle(
                              color: Colors.grey
                          ),),

                        Row(children: [
                          Icon(Icons.access_time_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("$order2",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              order2 = "Accepted";
                            });
                          },
                            icon: Icon(Icons.add_box_rounded),
                            color: Colors.white,),
                          IconButton(onPressed: () {
                            setState(() {
                              order2 = "Rejected";
                            });
                          },
                            icon: Icon(Icons.add),
                            color: Colors.white,)
                        ],),


                        Row(children: [
                          Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("Rs $BsPrice2",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                        ],),

                        Row(children: [
                          IconButton(onPressed: () {
                            setState(() {
                              count2 += 1;
                              BsPrice2 = BsPrice2+1050;
                            });
                          },
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.white,
                          ),

                          Text("× $count2",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  count2 -=1;
                                  BsPrice2 = BsPrice2-1050;
                                });
                              } ,
                              child: Text("⊝",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                ),)
                          ),
                        ],)
                      ],),
                    Image.asset('images/keyboard.jpeg',scale: 1.5,),
                  ],),
              ),

              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order No. 3',
                          style: TextStyle(
                              color: Colors.grey
                          ),),

                        Row(children: [
                          Icon(Icons.access_time_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("$order3",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              order3 = "Accepted";
                            });
                          },
                            icon: Icon(Icons.add_box_rounded),
                            color: Colors.white,),
                          IconButton(onPressed: () {
                            setState(() {
                              order3 = "Rejected";
                            });
                          },
                            icon: Icon(Icons.add),
                            color: Colors.white,)
                        ],),


                        Row(children: [
                          Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("Rs $BsPrice3",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                        ],),

                        Row(children: [
                          IconButton(onPressed: () {
                            setState(() {
                              count3 += 1;
                              BsPrice3 = BsPrice3+83199;
                            });
                          },
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("× $count3",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  count3 -=1;
                                  BsPrice3 = BsPrice3-83199;
                                });
                              } ,
                              child: Text("⊝",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                ),)
                          ),
                        ],)
                      ],),
                    Image.asset('images/PS4.jpeg',scale: 1.62,),
                  ],),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order No. 4',
                          style: TextStyle(
                              color: Colors.grey
                          ),),

                        Row(children: [
                          Icon(Icons.access_time_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("$order4",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              order4 = "Accepted";
                            });
                          },
                            icon: Icon(Icons.add_box_rounded),
                            color: Colors.white,),
                          IconButton(onPressed: () {
                            setState(() {
                              order4 = "Rejected";
                            });
                          },
                            icon: Icon(Icons.add),
                            color: Colors.white,)
                        ],),


                        Row(children: [
                          Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("Rs $BsPrice4",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                        ],),

                        Row(children: [
                          IconButton(onPressed: () {
                            setState(() {
                              count4 += 1;
                              BsPrice4 = BsPrice4+7899;
                            });
                          },
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("× $count4",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  count4 -=1;
                                  BsPrice4 = BsPrice4-7899;
                                });
                              } ,
                              child: Text("⊝",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                ),)
                          ),
                        ],)
                      ],),
                    Image.asset('images/Monitor.jpeg',scale: 1.56,),
                  ],),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order No. 5',
                          style: TextStyle(
                              color: Colors.grey
                          ),),

                        Row(children: [
                          Icon(Icons.access_time_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("$order5",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                          IconButton(onPressed: () {
                            setState(() {
                              order5 = "Accepted";
                            });
                          },
                            icon: Icon(Icons.add_box_rounded),
                            color: Colors.white,),
                          IconButton(onPressed: () {
                            setState(() {
                              order5 = "Rejected";
                            });
                          },
                            icon: Icon(Icons.add),
                            color: Colors.white,)
                        ],),


                        Row(children: [
                          Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5,),
                          Text("Rs $BsPrice3",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nerko',
                              fontSize: 20,
                            ),
                          ),
                        ],),

                        Row(children: [
                          IconButton(onPressed: () {
                            setState(() {
                              count5 += 1;
                              BsPrice5 = BsPrice5+83199;
                            });
                          },
                            icon: Icon(Icons.add_circle_outline),
                            color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("× $count3",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  count5 -=1;
                                  BsPrice5 = BsPrice5-83199;
                                });
                              } ,
                              child: Text("⊝",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                ),)
                          ),
                        ],)
                      ],),
                    Image.asset('images/PS4.jpeg',scale: 1.56,),
                  ],),
              ),
            ],),
        ),
      ),
    );
  }
}

