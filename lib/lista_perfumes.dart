import 'package:flutter/material.dart';

class ListaPerfumes extends StatefulWidget {
  @override
  _ListaPerfumesState createState() => _ListaPerfumesState();
}

class _ListaPerfumesState extends State<ListaPerfumes> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        child: Row(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                      child: InkWell(
                          child: Text(
                    "SUGGESTED",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green.shade600,
                    ),
                  ))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                      child: Text(
                    "POPULAR",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                  padding: EdgeInsets.only(left: 0),
                  height: 400,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Card(
                        color: Color(0xFF59A05E),
                        elevation: 1,
                        child: Container(
                          width: 200,
                          height: 400,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topLeft,
                                stops: [0.3, 1],
                                colors: [Color(0xFF59A05), Color(0xFF59A05E)]),
                          ),
                          child: Image.network(
                              "https://lh3.googleusercontent.com/proxy/FDtpNa6gcdTwZ1xgZu9lwpsuVIo8R5XD_mFfgq1T4TniFrO8KPr_GeRfhmpwBHN19QoJIKWAKAEB9vzgyCde5g5blh4GT8VUUQwGggI5kRQfRonwYqcaQ49R8BHYT1iYvXO_piA"),
                        ),
                      ),
                      Card(
                        color: Color(0xFF59A05E),
                        elevation: 1,
                        child: Container(
                            width: 200,
                            height: 400,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.network(
                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.perfumeshopping.com.br%2Fprodutos%2Fbleu-de-chanel-eau-de-parfum-masculino-decant%2F&psig=AOvVaw2sQuKhtonOVEpGhTQSlAOx&ust=1585529901070000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOiH-qi9vugCFQAAAAAdAAAAABAD")),
                      ),
                    ],
                  )),
            ),
          ),
        ]));
  }
}
