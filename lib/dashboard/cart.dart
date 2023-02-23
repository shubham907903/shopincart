import 'package:flutter/material.dart';
import 'package:shopincart/dashboard/checkout.dart';
class cart extends StatefulWidget {
  @override
  State<cart> createState() => _HomepageState();
}
class _HomepageState extends State<cart> {


  Widget build(BuildContext context) {
    return cart();
  }

  Widget cart() {
    return Scaffold(

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

          ),
        centerTitle: false,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
        'Your Cart', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    ),
    body:SingleChildScrollView(
    child:Column(
    children: [
      Container(
    height: 250,
        child: Column(
          children: [
            Image.asset('assets/images/cartnew.png',height: 120,width: 400,),
            Image.asset('assets/images/Group285.png',height: 120,width: 400,),
          ],
        )
    ),
      SizedBox(height: 20,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Total amount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
    Text("Rs 4200",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
  ],
),
      ),
      SizedBox(height: 7,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Discounts",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            Text("-Rs 2200",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      SizedBox(height: 7,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            Text("Rs 4200",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      SizedBox(height: 7,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax(5%)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            Text("Rs 420",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      SizedBox(height: 5,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Amount to be paid",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            Text("Rs 1652",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      SizedBox(height: 2,),
      Container(
          height: 120,
          width: 350,
          child: Row(
            children: [
              Icon(Icons.card_giftcard,color: Colors.orange),
              Text('Congratulations! you are saving 66% on this order',style: TextStyle(fontWeight: FontWeight.bold))


            ],
          )
      ),
      SizedBox(height: 0,),
      Container(

          color: Colors.blue,

          height: 40,
          width: 340,
          padding: EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget>[InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>checkout ()))
                  },
                  child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))

              )
              ])
      )
   ]
        
    ),
      
    )
    );
  }
}