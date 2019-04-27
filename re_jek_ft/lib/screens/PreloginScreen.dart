import 'package:flutter/material.dart';
import 'package:re_jek_ft/screens/PhoneLoginScreen.dart';
import 'package:re_jek_ft/screens/RegisterScreen.dart';

class PreloginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 30,
            child: Text(
              "reJEK¡",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 35,
            right: 35,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.network(
                      "https://ya-webdesign.com/images/drawing-motorcycle-anime-6.png",
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: Text(
                      "Welcome to reJEK¡",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                      "Are you ready to enjoy your fullfilling life without limits? Jets reJek¡"),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: MaterialButton(
                              onPressed: () {
                                _onLogin(context);
                              },
                              color: Colors.green,
                              height: 50,
                              child: Center(
                                  child: Text(
                                "LOG IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: MaterialButton(
                              onPressed: () {
                                _onRegister(context);
                              },
                              color: Colors.green,
                              height: 50,
                              child: Center(
                                  child: Text(
                                "REGISTER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        _onFacebookLogin(context);
                      },
                      color: Colors.blue[800],
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "f",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Flexible(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "CONTINUE WITH FACEBOOK",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0, bottom: 10),
                    child: Text(
                        "By logging and registering, you are by default agreeing to our Term of Service and Privacy Policy."),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneLoginScreen()));
  }

  void _onRegister(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
  }

  void _onFacebookLogin(BuildContext context) {

  }
}
