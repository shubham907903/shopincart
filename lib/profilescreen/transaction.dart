import 'package:flutter/material.dart';
class mytransaction extends StatefulWidget {
  @override
  State< mytransaction> createState() => _HomepageState();
}
class _HomepageState extends State< mytransaction> {

  Widget build (BuildContext context) {
    return  mytransaction();
  }
  Widget  mytransaction() {
    return Scaffold(

        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

            ),

            elevation: 0.1,
            backgroundColor: Colors.white,
            title: const Text(
              ' My Transactions', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
        ),

        body: Container(
          width: 400,
          height: 200,
          child: Text('Order ID # SICOO11                                   01-07-2022\nTransaction ID#TRN1234\nDownload Invoice',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        ),

    );
  }
}