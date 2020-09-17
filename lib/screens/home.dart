import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const imageUrlSachin =
        'https://s01.sgp1.cdn.digitaloceanspaces.com/article/126135-ubddxffhca-1566718809.jpg';
    const imageUrlLara =
        'https://english.cdn.zeenews.com/sites/default/files/2019/06/25/798871-lara.jpg';
    const imageUrlWarne =
        'https://image-cdn.essentiallysports.com/wp-content/uploads/20200524173654/E4445C6D-C91F-424A-A6A6-D94F65C79936.png';
    const imageUrlAbd =
        'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/05/23/685513-ab-de-villiers.jpg';
    const imageUrlVirat = 'https://s.ndtvimg.com/images/entities/300/virat-kohli-967.png';
    const imageUrlGayle = 'https://image-cdn.essentiallysports.com/wp-content/uploads/20200423191310/1197438_1296x729.jpg';

    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _showSnackBar(context, 'back icon clicked');
            },
            color: Colors.grey,
          ),
        ),
        actions: [
          Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.grey,
                    onPressed: () {
                      _showSnackBar(context, 'menu icon clicked');
                    },
                  ))
        ],
      ),
      body: Builder(
          builder: (context) => ListView(
                shrinkWrap: true,
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment(0.0, -0.4),
                        height: 100.0,
                        color: Colors.white,
                        child: Text(
                          'Coach UI',
                          style: TextStyle(
                              fontFamily: 'Montserrat', fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 10.0, color: Colors.black12)
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                                  child: Text(
                                    'YOU HAVE',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      25.0, 40.0, 5.0, 25.0),
                                  child: Text(
                                    '1241',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      85.0, 52.0, 5.0, 25.0),
                                  child: Text(
                                    '💕',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 90.0),
                            GestureDetector(
                              onTap: () {
                                _showSnackBar(context, 'Buy more clicked');
                              },
                              child: Container(
                                height: 50.0,
                                width: 125.0,
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(
                                  child: Text(
                                    'BUY MORE',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'MY COACHES',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                        Text(
                          'VIEW PAST SEASONS',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0,
                      ),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 4.0,
                        shrinkWrap: true,
                        children: [
                          _buildCard("Sachin Tendulkar", "Right Hand Batsman",
                              true, imageUrlSachin),
                          _buildCard("Shane Warne", "Right Arm Wrist Spinner",
                              false, imageUrlWarne),
                          _buildCard("Brian Lara", "Left Hand Batsman", false,
                              imageUrlLara),
                          _buildCard("AB de Villiers", "Right Hand Batsman",
                              true, imageUrlAbd),
                          _buildCard("Virat Kohli", "Right Hand Batsman",
                              true, imageUrlVirat),
                          _buildCard("Chris Gayle", "Right Hand Batsman",
                              false, imageUrlGayle),
                        ],
                      ))
                ],
              )),
    );
  }

  Widget _buildCard(String name, String status, bool isOnline, String url) {
    return InkWell(
      onTap: () {
        _showSnackBar(context, 'msg');
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 10.0,
        shadowColor: Colors.black12,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 5.0, color: Colors.black12)
                      ],
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(url), fit: BoxFit.fitHeight)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45),
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: !isOnline ? Colors.amber : Colors.green,
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0)),
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: !isOnline ? Colors.amber : Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        'Request',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Quicksand'),
                      ),
                    )))
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 1),
        elevation: 2.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0))));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
