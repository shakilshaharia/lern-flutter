import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page1.dart';
import 'package:multipage/page2.dart';
import 'package:multipage/page4.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LOGIN'),
        leading:
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> loadingpage()));
        }, icon: Icon(Icons.not_started)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> page1() ));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
        backgroundColor: Colors.orangeAccent,
        body: Center(
          child: SingleChildScrollView(
            controller: ScrollController(keepScrollOffset: true,),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 600 ,
                        width: 500,
                        child: Image.asset('images/money.png')),
                  ],
                ),
                Positioned(
                  bottom: 80,
                  child: SizedBox(
                    height: 300,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15.0),
                                prefixIcon: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black87),
                                    borderRadius: BorderRadius.circular(10.0)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      color: Colors.black87, style: BorderStyle.solid),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15.0),
                                prefixIcon: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black87),
                                    borderRadius: BorderRadius.circular(10.0)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      color: Colors.black87, style: BorderStyle.solid),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => page4()));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                              color: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => page1()));
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                              color: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
