import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

enum Mobileverificationstate {
  show_mobile_form_state,
  show_otp_form_state,
}

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final phonenumber = TextEditingController();

  final otpnumber = TextEditingController();
  final currentstate = Mobileverificationstate.show_mobile_form_state;


  getmobileform(context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 250),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
      child: ListView(
        children: [
          SizedBox(height: 130),
          Container(
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Hello! Champion",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              )),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            width: 280,
            height: 40,
            margin: EdgeInsets.only(right: 50, left: 50),
            child: Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "+91",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(width: 15),
                Container(
                    width: 200,
                    height: 30,
                    child: TextField(
                      controller: phonenumber,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 17),
                        border: InputBorder.none,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow),
              width: 280,
              height: 40,
              margin: EdgeInsets.only(right: 50, left: 50),
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
        ],
      ),
    );
  }

  getotpform(context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentstate == Mobileverificationstate.show_mobile_form_state
            ? getmobileform(context)
            : getotpform(context));
  }
}
