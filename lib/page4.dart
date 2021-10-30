import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page3.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HOMEY HEIST COMMUNITY'),
        leading:
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> loadingpage()));
            }, icon: Icon(Icons.not_started)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> page3()));
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      backgroundColor: Colors.orangeAccent,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Text(
              '(SUCCESSFULLY LOGGED IN)',
              style:
              TextStyle(fontSize: 22,
                  color: Colors.black87, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset('images/money.png')),
                    Expanded(
                        flex: 1,
                        child: Image.asset('images/money.png')),
                  ],
                ),
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset('images/money.png')),
                    Expanded(
                        flex: 1,
                        child: Image.asset('images/money.png')),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
