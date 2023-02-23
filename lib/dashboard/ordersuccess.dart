import 'package:flutter/material.dart';
import 'package:shopincart/dashboard/homescreen.dart';
import 'package:shopincart/dashboard/orders.dart';

class order extends StatefulWidget {
  @override
  State<order> createState() => _HomepageState();
}
class _HomepageState extends State<order> {



  Widget build(BuildContext context) {
    return order();
  }

  Widget order() {


    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

        ),
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
          'Order Success', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
          Icon(Icons.check_circle_outlined,color:Colors.blue),
          Text('Success'),

        ],
      ),
    ),

          SizedBox(height: 30,),
          Container(
            height: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outlined,color: Colors.green,size: 100,),
                Text('Thank You',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text('Your Order is Successfully placed',style: TextStyle(color:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                Spacer(),
                Text('You Can Track The Delivery in The \n "Order" Section',style: TextStyle(color:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),
                )
    
              ],
            )
          ),
          SizedBox(height: 10,),
          Container(

              color: Colors.white,

              height: 55,
              width: 340,
              padding: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[InkWell(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>orders())),
                      },
                      child: Text("Go To Your Orders",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold))




                  ) ]  )
          ),
          SizedBox(height: 5,),
          Container(

              color: Colors.blue,

              height: 55,
              width: 340,
              padding: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[InkWell(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>Homepage())),
                      },
                      child: Text("Continue Shopping",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))




                  ) ]  )
          )
        ]
    )
    );
  }}