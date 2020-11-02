import 'package:flutter/material.dart';
import 'package:magicui/data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Dealpage extends StatefulWidget {
  Dealpage(this.pos);
  final int pos;
  @override
  _DealpageState createState() => _DealpageState(pos);
}

class _DealpageState extends State<Dealpage> {
  bool isPressed = false;
  final int pos;
  _DealpageState(this.pos);
  List<dynamic> ids = data.keys.toList();
  List<String> companyname = [
    'ABC Company',
    'company 2',
    'company 3',
    'company 4',
  ];
  List<String> type = [
    'Food Waste',
    'E Waste',
    'Binned Products',
    'Used Goods'
  ];
  _exctype() {
    switch (data[ids[pos]]['productType']){
                    case "Food Waste":
                      return Colors.green;
                    case "E Waste":
                      return Colors.blue;
                    case "Binned Products":
                      return Colors.brown;
                    case "Used Goods":
                      return Colors.deepOrange[200];
                    default:
                      return Colors.purple;
    }
  }
  @override
  Widget build(BuildContext context) {
    List<dynamic> ids = data.keys.toList();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Colors.blue[600],
                  Colors.blue[500],
                  Colors.blue[400],
                  Colors.blue[300],
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                Row(children: [
                  IconButton(
                    icon: Icon(Icons.view_headline,
                        color: Colors.black54, size: 30.0),
                    onPressed: () {
                      /* Side TAB BUTTON */
                    },
                  ),
                  Spacer(),
                  Text(
                    " XSEP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w100),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.send,
                          color: Colors.black54, size: 25.0),
                      onPressed: () {
                        /* ADD TO CART BUTTON */
                      })
                ]),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: Text(
                        data[ids[pos]]["productType"],
                        style: TextStyle(color: _exctype(), fontSize: 23),
                      ),
                    ),
                    Spacer(),
                    Text("Rating :",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 14)),
                    RatingBar(
                      initialRating: 3,
                      minRating: 1,
                      itemSize: 18,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) =>
                          Icon(Icons.star, color: Colors.blue[300]),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 8, 0, 4),
                      height: 20.0,
                      width: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 0.4, 0.7, 0.9],
                          colors: [
                            Colors.red[300],
                            Colors.red[400],
                            Colors.blue[400],
                            Colors.blue[300],
                          ],
                        ),
                      ),
                      child: Text(
                        "Deal of the day",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 8, 7),
                      child: Text(
                        data[ids[pos]]["companyName"],
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 300,
                  width: 500,
                  padding:
                      new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 18.0),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(data[ids[pos]]["dpUrl"]),
                    fit: BoxFit.fill,
                  )),
                  child: Container(
                    color: Colors.lightBlue,
                    child: IconButton(
                        icon: Icon(Icons.favorite_border,
                            size: 25,
                            color: (isPressed) ? Colors.red : Colors.white),
                        onPressed: () {
                          setState(() {
                            isPressed = true;
                          });
                        }),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 8, 0, 0),
                      child: Text(data[ids[pos]]["productName"],
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 25)),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 8, 0, 0),
                      child: Text("Contact Seller",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 16)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 8, 0),
                      child: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {},
                        iconSize: 18,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                    padding: EdgeInsets.all(16),
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Text(data[ids[pos]]["productDescription"],
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 16))),
                Row(
                  children: [
                    Container(
                        width: 220,
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                        padding: EdgeInsets.all(16),
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("Price:",
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16)),
                            Text("2000₹/Kg",
                                style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 22,
                                ))
                          ],
                        )),
                    Spacer(),
                    Container(
                        width: 220,
                        margin:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 13),
                        padding: EdgeInsets.all(16),
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("Quantity in Stock:",
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16)),
                            Text("2000Kg",
                                style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 22,
                                )),
                          ],
                        ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 8, 0, 4),
                      child: Text("Reviews",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 18)),
                    ),
                  ],
                ),
                for (int i = 0; i < 2; i++)
                  ListTile(
                    title: Text("hi",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 18)),
                    tileColor: Colors.grey[200],
                    subtitle: Text(
                      "hello",
                    ),
                  )
              ],
            ),
          ),
        ));
  }
}
