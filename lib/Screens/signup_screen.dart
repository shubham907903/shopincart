import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => InitState();
}

enum Account { Personal, Reselling }


class InitState extends State<SignUpScreen> {

  Account _account = Account.Personal;

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "\n Welcome to\nShopinKarts",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Image(
              image: AssetImage("assets/images/logo1.png"),
              height: 90,
              width: 90,
            ),
          ],
        ),
      ),
      Text('Please fill the below details to continue',
          style: TextStyle(
            color: Colors.black12,
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          )),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 10), blurRadius: 0, color: Color(0xfEEEEEE))
          ],
        ),
        alignment: Alignment.center,
        child: const TextField(
            decoration: InputDecoration(
          icon: Icon(
            Icons.email,
          ),
          hintText: "Enter Email/Mobile no.",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        )),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please Select One',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),Padding(padding:const EdgeInsets.fromLTRB(10, 10, 15, 15) ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Expanded(
                  child: ListTile(
                    title: Text('Personal use'),
                    leading: Radio(
                        value: Account.Personal,
                        groupValue: _account,
                        onChanged: (  value) {
                          setState(() {
                            _account = value!;
                          });
                        }),
                  ),

                ),
                 Expanded(
                  child:ListTile(
                    title:Text('For Reselling'),
                  leading:
                  Radio(
                      value: Account.Personal,
                      groupValue: _account,
                      onChanged: (value) {
                        setState(() {
                          _account = value!;
                        });
                      }),
                ),
              ),])
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 0),
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 10), blurRadius: 50, color: Color(0xfEEEEEE))
          ],
        ),
        alignment: Alignment.center,
        child: const TextField(
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
            child: Text(
              "Sign Up",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      )
    ])));
  }
}
