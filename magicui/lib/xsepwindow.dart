import 'package:flutter/material.dart';
import 'package:magicui/data.dart';
import 'package:magicui/productpage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Position extends StatefulWidget {
  Position({Key key, this.deal}) : super(key: key);
  final int deal;
  @override
  _PositionState createState() => _PositionState(deal);
}

class _PositionState extends State<Position> {
  final int deal;
  _PositionState(this.deal);
  @override
  Widget build(BuildContext context) {
    List<dynamic> ids = data.keys.toList();
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Dealpage(deal)));
        },
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: () {
                  switch (data[ids[deal]]['productType']) {
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
                }(),
                width: 7,
              ))),
              child: Row(children: [
                Container(
                  height: 170,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data[ids[deal]]['dpUrl']),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(width: 5),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    Container(
                      width: 160,
                      child: Text(data[ids[deal]]['productName'],
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                          maxLines: 3),
                    )
                  ]),
                  SizedBox(height: 10),
                  RatingBar(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 15,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.blue[300],
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(height: 10),
                  Container(
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
                  Text(
                    "Price: 300",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Text(data[ids[deal]]['productName'],
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                        maxLines: 3),
                  ),
                ]),
              ]),
            )),
      ),
    );
  }
}

class Xsep extends StatefulWidget {
  Xsep({Key key}) : super(key: key);
  @override
  _XsepState createState() => _XsepState();
}

class _XsepState extends State<Xsep> {
  int i;
  @override
  Widget build(BuildContext context) {
    List<dynamic> ids = data.keys.toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
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
                IconButton(
                    icon: Icon(Icons.add_shopping_cart,
                        color: Colors.black54, size: 25.0),
                    onPressed: () {
                      /* ADD TO CART BUTTON */
                    })
              ]),
              Container(
                child: Container(
                  child: Text(
                    " XSEP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Container(
                margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Color(0xffb4c2d3),
                      fontSize: 14,
                      fontFamily: 'Medium',
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(12),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xffb4c2d3),
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Container(
          margin: EdgeInsets.fromLTRB(7, 5, 7, 0),
          child: SingleChildScrollView(
            child: Wrap(children: [
              Text(
                "   Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                padding: EdgeInsets.all(16),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Save',
                              style: TextStyle(
                                color: Color(0xff7a7a7a),
                                fontFamily: 'Bold',
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '25%',
                              style: TextStyle(
                                color: Color(0xffffa726),
                                fontFamily: 'Bold',
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Corn',
                          style: TextStyle(
                            color: Color(0xff1f1f1f),
                            fontFamily: 'Medium',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '859,00£',
                                style: TextStyle(
                                  color: Color(0xff1f1f1f),
                                  fontFamily: 'Bold',
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: ' Original price:',
                                style: TextStyle(
                                  color: Color(0xff7a7a7a),
                                  fontFamily: 'Bold',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: ' 1059,00£',
                                style: TextStyle(
                                  color: Color(0xff7a7a7a),
                                  fontFamily: 'Bold',
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "   Deals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              for (i = 0; i < ids.length; i++)
                // This is the product view card
                Position(deal: i)
            ]),
          ),
        ),
      ),
    );
  }
}
