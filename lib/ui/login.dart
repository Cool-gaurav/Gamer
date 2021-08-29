import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with InputValidation {
  TextEditingController mobileEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  List<Map<String, String>> userList = [
    {'9898989898': 'password123'},
    {'9876543210': 'password123'},
  ];
  bool _submitEnabled = true;
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formGlobalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 120, 40.0, 40),
                width: 150,
                height: 150,
                child: ClipRRect(
                  child: Image.asset("assets/games.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 30),
                child: TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      if (_submitEnabled = isValidUsernamePassword(value)) {
                        return null;
                      } else {
                        return 'Username is Invalid';
                      }
                    } else {
                      return 'Username cannot be Blank';
                    }
                  },
                  onChanged: (String value) async {
                    setState(() {
                      _submitEnabled = true;
                    });
                  },
                  controller: mobileEditingController,
                  style: TextStyle(letterSpacing: 3.0),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    isDense: true,
                    labelText: "Username",
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40),
                child: TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      if (_submitEnabled = isValidUsernamePassword(value)) {
                        return null;
                      } else {
                        return 'Password is Invalid';
                      }
                    } else {
                      return 'Password cannot be Blank';
                    }
                  },
                  onChanged: (String value) async {
                    setState(() {
                      _submitEnabled = true;
                    });
                  },
                  controller: passwordEditingController,
                  style: TextStyle(letterSpacing: 3.0),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    isDense: true,
                    labelText: "Password",
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue, /// foreground
                        ),
                        child: Text("Submit",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        onPressed: _submitEnabled
                            ? () {
                                if (formGlobalKey.currentState.validate()) {
                                  formGlobalKey.currentState.save();
                                  submit(context);
                                }
                              }
                            : null),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  submit(BuildContext context) async {
    bool auth = true;
    for (var item in userList) {
      if (item.containsKey(mobileEditingController.text)) {
        if (item[mobileEditingController.text] ==
            passwordEditingController.text) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('isLogin', true);
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => Home()));
        } else
          auth = false;
      } else
        auth = false;
    }
    if (auth == false) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(milliseconds: 2000),
        content: Text(
          "Incorrect username or password.",
          style: TextStyle(fontSize: 16),
        ),
      ));
      setState(() {
        _submitEnabled = false;
      });
    }
  }
}

mixin InputValidation {
  bool isValidUsernamePassword(String value) {
    if (value.length >= 3 && value.length <= 11) {
      return true;
    } else {
      return false;
    }
  }
}
