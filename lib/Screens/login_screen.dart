import 'package:flutter/material.dart';
import 'package:shopincart/dashboard/dashboardnew.dart';
import 'signup_screen.dart';
import 'package:shopincart/dashboard/homescreen.dart';
import 'package:shopincart/forgotscreens/passwordreset.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return InitWidget();
  }

  Widget InitWidget() {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Welcome back to\nBrainBox apps",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Image(
                  image: AssetImage("assets/images/logo1.png"),
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ),
          Text('Please fill the below details to continue',
              style: TextStyle(color: Colors.black12,fontWeight: FontWeight.bold,fontSize: 12.0,)),


          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 0,
                    color: Color(0xfEEEEEE))
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
                decoration: InputDecoration(
              icon: Icon(
                Icons.email,
              ),
              hintText: "Enter Email/Mobile no.",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xfEEEEEE))
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 10),
            alignment: Alignment.bottomRight,
            child: InkWell(
              child: Text("Forgot Password"),
              onTap: () =>
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => password())),
              })
          ),
          GestureDetector(
            onTap: () => {},
            child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xFF0277BD)), (new Color(0xFF0277BD))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(offset: Offset(0, 10), color: Color(0xFF0277BD))
                  ],
                ),
                child: InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard())),
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()))
                          },
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)))
                ],
              ))
        ],
      ),
    ));
  }
}
