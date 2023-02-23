import 'package:flutter/material.dart';


class address extends StatefulWidget {
  @override
  State<address> createState() => _HomepageState();
}
class _HomepageState extends State<address> {


  Widget build(BuildContext context) {
    return address();
  }

  Widget address() {
    return Scaffold(

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

          ),
        centerTitle: false,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: Text(
        'Address', style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
    ),
      body:Column(
        children:<Widget> [
          Expanded(flex: -4,
            child:

      Container(

        height: 30,
        width: 300,

      child: Text('+ Add a new address',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold))
      ),

          ),
    Expanded(flex: -2,
      child:
    Container(
    width: 300,
    height: 50,
    child: Text('Ashok Yadav',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
    ),
    ),
    ),
    Expanded(
        child:
    Container(
    width: 300,
    height:30,
    child: Text('12-B,Laxmi nagar,Niwaru road \nJhotwata-302013 \nJaipur Rajasthan \n 9999999999'
    )

    )
    )]
      )
    );
  }
}