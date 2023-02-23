import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 class password extends StatefulWidget {
  @override
  State<password> createState() => _HomepageState();
}
 class _HomepageState extends State<password> {

  Widget build(BuildContext context) {
    return password();
  }

  Widget password() {


    return Scaffold(
      resizeToAvoidBottomInset: false,

        appBar: AppBar(
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
        'Password Reset', style: TextStyle(color: Colors.black),),
    ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("Please enter your Mobile Number",style: TextStyle(fontSize: 15,height: 1.5,color: Colors.grey.shade600),)
            ,SizedBox(height: 30),
             TextField(
               keyboardType: TextInputType.number,
                 decoration:InputDecoration(

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black),

                ),

                hintText: "Enter mobile no.",


                prefix: Icon(Icons.mobile_friendly_rounded),


              )

            ),

            Container(

                margin: EdgeInsets.only(left: 20, right: 20, top: 270,bottom: 20),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xFF0277BD)), (new Color(0xFF0277BD))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(offset: Offset(0, 5), color: Color(0xFF0277BD))
                  ],
                ),

                  child: const Text(
                    "Reset Password",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
          ],
        )
      )
    );
  }
}
