import 'package:flutter/material.dart';
import 'package:multipage/loadingpage.dart';
import 'package:multipage/page2.dart';
import 'package:multipage/page3.dart';
import 'package:multipage/page4.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MONEY HEIST'),
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
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
                child: Text(
              'Money Heist',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )),
            Center(
                child: Text(
              'Registration Form',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15.0),
                        fillColor: Colors.redAccent,
                        filled: true,
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
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15.0),
                        fillColor: Colors.redAccent,
                        filled: true,
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15.0),
                        fillColor: Colors.redAccent,
                        filled: true,
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
                        fillColor: Colors.redAccent,
                        filled: true,
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Number',
                        labelStyle: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15.0),
                        fillColor: Colors.redAccent,
                        filled: true,
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
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('(Gender)',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
                Radio(value: 2, groupValue: _value, onChanged: (value){
                  setState(() {
                    value = _value;
                  });
                }),
                Text('Male',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
                Radio(value: 2, groupValue: _value, onChanged: (value){
                  setState(() {
                    value = _value;
                  });
                }),
                Text('Female',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page2()));
                  },
                  child: Text(
                    'Sign Up',
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
                SizedBox(
                  width: 20.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page3()));
                  },
                  child: Text(
                    'Login',
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
      ),
    );
  }
}
