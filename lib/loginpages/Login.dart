import 'package:flutter/material.dart';
import 'package:pr/pages/SR.dart';
import 'Createaccount.dart';
import 'Reset_Passward.dart';

Color orangeColors = Color(0xffF5591F);
Color orangeLightColors = Color(0xffF2861E);

class Login extends StatefulWidget {
  static final String path = "lib/src/pages/login/login14.dart";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Login"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Enter your Email", icon: Icons.email),
                    _textInput(hint: "Password", icon: Icons.vpn_key),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => RESET()));
                        },
                        child: Text(
                          "Forgot Password?",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: "SIGNUP",
                          onClick: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SR()));
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(children: [
                      Text("Don't have an account ? ",
                          style: TextStyle(color: Colors.black)),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupThreePage()));
                        },
                        child: Text("Signup",
                            style: TextStyle(color: orangeColors)),
                      ),
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [orangeColors, orangeLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          Center(
            child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://fluidcontrols.com/wp-content/uploads/2018/07/fc-logo.jpg')),
          ),
        ],
      ),
    );
  }
}
