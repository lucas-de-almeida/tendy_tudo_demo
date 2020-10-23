import 'package:flutter/material.dart';

class DetailsShops extends StatelessWidget {
  final productDetailsName;
  final productDetailsShops;
  final productDetailsPicture;

  const DetailsShops({
    Key key,
    this.productDetailsName,
    this.productDetailsPicture,
    this.productDetailsShops,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildCard(context),
          buildDescription(),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffdddddd),
        ),
//        width: MediaQuery.of(context).size.width -50,
//        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset(
                  productDetailsPicture,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width - 80,
                ),
                padding: EdgeInsets.all(20),
              ),
              flex: 6,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.pink,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }

  Widget buildDescription() {
    return ListTile(
      title: Text("$productDetailsName Details"),
      subtitle: Text(
        "$productDetailsShops",
        softWrap: true,
      ),
    );
  }
}
