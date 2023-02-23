import 'package:flutter/material.dart';
import 'package:shopincart/profilescreen/transaction.dart';

import '../dashboard/address.dart';

class account extends StatefulWidget {
  @override
  State<account> createState() => _HomepageState();
}
class _HomepageState extends State<account> {


  Widget build(BuildContext context) {
    return account();
  }

  Widget account() {
    return Scaffold(

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

          ),
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const Text(
        'Profile', style: TextStyle(color: Colors.lightBlue),),
        ),
      body:SingleChildScrollView(
      child: Column(
      children: [
        Container(
        height:50,width: 50,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Stack(
            children: [
              Image.asset('assets/images/profile.png'),
              const Align(alignment: Alignment.topCenter),
            ],
          ),
          ),
    ),


        Column(
          children:[


           InkWell(
            onTap:(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>mytransaction()));
    },


            child: const ListTile(

              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
              title: Text('My Transactions'),
              trailing: Icon(Icons.arrow_forward_ios),
              minVerticalPadding: 2,
              
            )
        ),
        Divider(),
        InkWell(
            onTap:(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>address()));

            } ,
            child: const ListTile (
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
                title: Text('Addresses'),
              trailing: Icon(Icons.arrow_forward_ios),
              minVerticalPadding: 2,

            )),
        Divider(),
        InkWell(
            onTap:(){} ,
            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
              title: Text('Customer Support'),
              trailing: Icon(Icons.arrow_forward_ios),
              minVerticalPadding: -5,
            )
        ),
Divider(),
        InkWell(
            onTap:(){} ,
            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
              title: Text('About Shopinkarts'),
              trailing: Icon(Icons.arrow_forward_ios),
            )
        ),
Divider(),
        InkWell(
            onTap:(){} ,
            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
              title: Text('Terms & Conditions'),
              trailing: Icon(Icons.arrow_forward_ios),
            )
        ),
        Divider(),
        InkWell(
            onTap:(){} ,

            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
              title: Text('Refund Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
            )
        ),
        Divider(),
        InkWell(
            onTap:(){} ,

            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
            )
        ),
        Divider(),
        InkWell(
            onTap:(){} ,

            child: const ListTile(
              visualDensity: VisualDensity(horizontal: 0,vertical: -2),

              title: Text('Logout',style: TextStyle(color: Colors.red),),
              trailing: Icon(Icons.arrow_forward_ios),
            )
        ),

      ],

        )
    ]
    )
      )
    );
  }
}