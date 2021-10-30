import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipage/page1.dart';

class loadingpage extends StatefulWidget {
  const loadingpage({Key? key}) : super(key: key);

  @override
  _loadingpageState createState() => _loadingpageState();
}

class _loadingpageState extends State<loadingpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => page1()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 250.0, child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('images/money.png'),
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                '''       MONEY HEIST
  LA CASA DE PAPEL''',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0, color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20,),
              CircularProgressIndicator(
                backgroundColor: Colors.red,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
