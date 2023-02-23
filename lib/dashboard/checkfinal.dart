import 'package:flutter/material.dart';

import 'ordersuccess.dart';

class check extends StatefulWidget {
  @override
  State<check> createState() => _HomepageState();
}
class _HomepageState extends State<check> {



  Widget build(BuildContext context) {
    return check();
  }

  Widget check() {


    return Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

          ),
        centerTitle: false,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
        'Checkout', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    ),
    body:Column(
      children: [ Container(
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.check_circle_outlined,color: Colors.blue,),
        Text('Shipping'),
        Icon(Icons.check_circle_outlined,color: Colors.blue,),
        Text('Payment'),
        Icon(Icons.check_circle_outlined,),
        Text('Success'),

      ],
    ),
    ),
    Divider(),
    SizedBox(height: 10,),
    Container(
    height: 50,
    child: Text('How would you like to pay?',textAlign:TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

    ),
    Divider(),
    SizedBox(height: 10,),
    Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Icon(Icons.currency_rupee_sharp,color: Colors.blue,),
    Text('Cash on Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
    Icon(Icons.check_circle_outlined,color: Colors.blue,),
    ],
    )
    ),
    Divider(),
    SizedBox(height: 10,),
    Container(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Icon(Icons.payments_rounded,color: Colors.blue,),
    Text('Pay Online',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
    Icon(Icons.check_circle_outlined,color: Colors.blue,),
    ],
    )
    ),
    SizedBox(height: 300,),
    Container(

    color: Colors.blue,

    height: 50,
    width: 340,
    padding: EdgeInsets.all(8.0),
    child: Column(





    mainAxisAlignment: MainAxisAlignment.start,
    children:<Widget>[InkWell(
    onTap: () => {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>order())),
    },
    child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))

    )
    ])
    )
]
    )

    );
  }}