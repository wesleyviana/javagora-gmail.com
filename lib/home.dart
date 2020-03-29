import 'package:flutter/material.dart';

import 'lista_perfumes.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.short_text,
            color: Colors.black45,
            size: 40,
          ),
          actions: <Widget>[
            Icon(
              Icons.shopping_basket,
              color: Colors.black45,
              size: 40,
            ),
          ],
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Perfume",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: RotatedBox(
                            quarterTurns: 3,
                            child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xFF59A05E),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.tune,
                                      color: Colors.white,
                                      size: 28,
                                    )))),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 60,
                            width: 100,
                            decoration: new BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "FLORAL",
                              style: TextStyle(
                                  color: Color(0xFF59A05E), fontSize: 10),
                            )),
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 60,
                            width: 140,
                            decoration: new BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "WARM & SPICY",
                              style: TextStyle(
                                  color: Color(0xFF59A05E), fontSize: 10),
                            )),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListaPerfumes(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Best deals",
                              style: TextStyle(fontSize: 20),
                            )),
                        Icon(
                          Icons.skip_next,
                          color: Colors.black38,
                        )
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        width: 370,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)),
                        child: Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade400,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.network(
                                    "https://lh3.googleusercontent.com/proxy/FDtpNa6gcdTwZ1xgZu9lwpsuVIo8R5XD_mFfgq1T4TniFrO8KPr_GeRfhmpwBHN19QoJIKWAKAEB9vzgyCde5g5blh4GT8VUUQwGggI5kRQfRonwYqcaQ49R8BHYT1iYvXO_piA")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "My Burberry Black",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "R\$ 89.99",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ]),
                      ))
                ],
              )
            ]));
  }
}
