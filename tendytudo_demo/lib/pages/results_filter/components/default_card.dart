import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final String labelText;

  const DefaultCard({Key key, this.labelText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(labelText),
          ],
        ),
      ),
    );
  }
}

class DefaultCardShops extends StatelessWidget {
  final String imageShops;
  final String nameShops;
  final String detailsShops;

  const DefaultCardShops({
    Key key,
    this.imageShops,
    this.nameShops,
    this.detailsShops,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            Container(
              child: Image.asset(
                imageShops,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width - 80,
              ),
              padding: EdgeInsets.all(20),
            ),
            Row(
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
            ListTile(
              title: Text("$nameShops"),
              subtitle: Text(
                "$detailsShops",
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
