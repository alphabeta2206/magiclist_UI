import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    List<String> picture = ["https://i.imgur.com/0bbqCk6.gif?w=5&h=5","https://unsplash.com/photos/4_jhDO54BYg","https://www.gettyimages.in/detail/photo/electronics-recycling-royalty-free-image/185234332","https://unsplash.com/photos/4_jhDO54BYg"];
  List<String> type = ['Food Waste', 'E Waste', 'Binned Products', 'Food Waste'];
  List<String> companyname = [
    'company 1',
    'company 2',
    'company 3',
    'company 4',
  ];
  List<String> description = ['me', 'sender', 'sender', 'me'];
  List<String> price = ['100', '200', '300', '400'];
  List<String> deal = ['yes', 'no', 'yes', 'no'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0)
          )
        ),
              child: Container(
          margin: EdgeInsets.fromLTRB(7, 5, 7, 0),
          child: SingleChildScrollView(
            child: Wrap(children: [
              for (int i = 0; i < picture.length; i++)
                // This is the product view card
                Card(
                    shadowColor: Colors.blue[200],
                    elevation: 3,
                    child: Row(children: [
                      Container(
                          height: 150,
                          child: Image.network(
                              picture[i])),
                      SizedBox(width: 5),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(companyname[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 25)),
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
                              price[i],
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            Text(price[i]),
                          ]),
                    ]))
            ]),
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115.0),
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
                margin: EdgeInsets.fromLTRB(4, 10, 4, 0),
                child: Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search)),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
