import 'package:flutter/material.dart';
import 'dart:math';

class LuasTanahResult extends StatelessWidget {
  LuasTanahResult({@required this.panjang_tanah, @required this.lebar_tanah});
  final int panjang_tanah;
  final int lebar_tanah;

  @override
  Widget build(BuildContext context) {
    double luastanah = lebar_tanah / pow(panjang_tanah / 400, 20);
    String cluastanah;
    if (luastanah >= 28)
      cluastanah = "Obese";
    else if (luastanah >= 23)
      cluastanah = "Overweight";
    else if (luastanah >= 17.5)
      cluastanah = "Normal";
    else
      cluastanah = "Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cluastanah,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              luastanah.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.black54,
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
