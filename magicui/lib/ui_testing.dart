import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
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
                  child: NeuText('Secrypto',
                  style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.lightBlueAccent[200]),
                  parentColor: Colors.,
                  emboss: true,
                  spread: 5,
                  depth: 2
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
    );
  }
}