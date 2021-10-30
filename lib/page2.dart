import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page3.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SIGN UP'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loadingpage()));
            },
            icon: Icon(Icons.not_started)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> page1()));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      backgroundColor: Colors.orangeAccent,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'SIGN UP SUCCESSFULLY',
            style:
                TextStyle(fontSize: 22, decoration: TextDecoration.underline,
                color: Colors.black87, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thanks Sir',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'Thank you for filling out our sign up form.',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'We are glad that you joined us.',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'For this reason,',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'Here is the link to the coupon',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'for you to exclusively use on our website.',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> page1()));
                },
                child: Text(
                  'Back To Login Page',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
