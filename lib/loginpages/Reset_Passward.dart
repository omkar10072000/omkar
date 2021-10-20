import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pr/loginpages/Createaccount.dart';
import 'package:pr/loginpages/Login.dart';
import 'Createaccount.dart';

class RESET extends StatefulWidget {
  @override
  _RESETState createState() => _RESETState();
}

class _RESETState extends State<RESET> with TickerProviderStateMixin {
  TextEditingController _controlleremail = TextEditingController();
  TextEditingController _controllerpost = TextEditingController();

  // final formKey = new GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  String email = "";
  String Post = "";
  int a = 0;
  bool _isInAsyncCall = false;

//  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    int l = 500;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 150.0),
          child: Card(
            borderOnForeground: true,
            elevation: 30.0,
            shadowColor: Colors.blueAccent,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://fluidcontrols.com/wp-content/uploads/2018/07/fc-logo.jpg')),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    child: Text(
                  " RESET PASSWAORD",
                  style: TextStyle(color: Colors.blue[900], fontSize: 30),
                )),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: _controlleremail,
                      decoration: InputDecoration(
                        hintText: "Enter Valid Email ",
                        errorText: email,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                        labelText: ("Email"),
                        labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                        ),
                        //  enabled: true,
                        prefixIcon: Icon(Icons.mail),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "ALL CAPITAL",
                        errorText: Post,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                        labelText: ("Post"),
                        labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                        ),
                        prefixIcon: Icon(Icons.assignment_ind_rounded),
                      )),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RaisedButton(
                          color: Colors.blue,
                          splashColor: Colors.blueAccent[100],
                          shape: StadiumBorder(),
                          elevation: 50.0,
                          onHighlightChanged: (isHigh) {},
                          onPressed: () async {
                            a = 0;

                            setState(() {
                              l = 100;

                              if (_controller.text.length < 8) {
                                email = _controlleremail.text;
                              } else {
                                email = "";
                                a = a + 200;
                              }
                            });
                            setState(() {
                              if (!_controlleremail.text.contains('@')) {
                                Post = _controllerpost.text;
                              } else {
                                Post = " ";
                                a = a + 20;
                              }
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));

                            setState(() {
                              _isInAsyncCall = false;
                            });
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
