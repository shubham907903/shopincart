import 'package:flutter/material.dart';
class readreview extends StatefulWidget {
  @override
  State<readreview> createState() => _HomepageState();
}
class _HomepageState extends State<readreview> {

  Widget build (BuildContext context) {
    return readreview();
  }
  Widget readreview() {
    return Scaffold(

        appBar: AppBar(


            elevation: 0.1,
            backgroundColor: Colors.white,
            title: const Text(
              ' Read Review', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
        ),
        body:
        Padding(
            padding: const EdgeInsets.all(2.0),
            child:Column(children: [

              SizedBox(
                  height: 120.0,
                  width: 350.0,
                  child: Container(
                      decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage('assets/images/Frame8190.png',),
                              fit: BoxFit.fill,)
                      )

                  )

              ),


              SizedBox(
                  height: 350.0,
                  width: 350.0,
                  child: Container(
                      decoration: new BoxDecoration(
                          image: new DecorationImage(image: new AssetImage('assets/images/Group10895.png',),
                              fit: BoxFit.fill)
                      )
                  )
              ),
            ]
            )
        )

    );
  }
}