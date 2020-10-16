import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
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
                margin: EdgeInsets.fromLTRB(4, 0, 4, 10),
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
                decoration: BoxDecoration(
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
