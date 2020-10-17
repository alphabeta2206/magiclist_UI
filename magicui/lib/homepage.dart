import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(children: [
          for (int i = 0; i < 30; i++)
            // This is the product view card
            Card(
              elevation: 3,
                child: Row(children: [
              Container(height: 150,child: Image.network("https://i.imgur.com/0bbqCk6.gif?w=5&h=5")),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Product Title ",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
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
                    color: Colors.amber[300],
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Container(
                  color: Colors.red,
                  child: Text(
                    "Deal of the day",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  "0",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text("Product Description"),
              ]),
            ]))
        ]),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
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
              Container(
                margin: EdgeInsets.fromLTRB(4, 0, 4, 9),
                child: Row(
                  children: [
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
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(4, 0, 4, 1),
                child: Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search)),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
