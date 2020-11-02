      /*appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
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
                margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
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
                margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                child: Flexible(
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
                ),
              ),
            ],
          ),
        ),
      ),
    */