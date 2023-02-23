import 'package:flutter/material.dart';
class notification extends StatefulWidget {
  @override
  State<notification> createState() => _HomepageState();
}
class _HomepageState extends State<notification> {

  Widget build (BuildContext context) {
    return notification();
  }
  Widget notification() {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

        ),
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
          ' Notification', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
      ),
       body:Container(
         height: 100,width: 400,
         child:
         Text('Your order has been dispatched.The delivery agent will \n collect COD upon reaching.\n 30-06-2022 12:33PM\n Thanks for your order,It under procressing.\n 30-06-2022 12:33PM'
         ),
       )

    );
  }
}