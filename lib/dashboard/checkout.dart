import 'package:flutter/material.dart';
import 'package:shopincart/dashboard/orders.dart';

import 'checkfinal.dart';
import 'ordersuccess.dart';

class checkout extends StatefulWidget {
  @override
  State<checkout> createState() => _HomepageState();
}
class _HomepageState extends State<checkout> {





  Widget build(BuildContext context) {
    return checkout();
  }

  Widget checkout() {


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
    body:

           Container(

           color: Colors.white,
           padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           TextField(

           decoration:InputDecoration(
             labelText: "Name",
                 floatingLabelAlignment: FloatingLabelAlignment.start,

                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10.0),
                   borderSide: BorderSide(color: Colors.black),

                 ),


           )
           ),
             SizedBox(height: 5,),
             Row(
               children:<Widget> [
                 Flexible(

                   child: TextField(
           decoration:InputDecoration(
           labelText: "+91",

           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(5.0),
           borderSide: BorderSide(color: Colors.black),

           ),


           )
           ),
                   ),

                 Flexible(

                   child: TextField(
                       keyboardType: TextInputType.number,

                       decoration:InputDecoration(
                         labelText:" Phone Number",


                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5.0),
                           borderSide: BorderSide(color: Colors.black),

                         ),


                       )
                   ),
                 )
               ],
             ),
             SizedBox(height: 5,),
             Container(
               child: TextField(


           decoration:InputDecoration(
           labelText:" Flat/House No/Building Name",


           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(5.0),
           borderSide: BorderSide(color: Colors.black),

           ),


           )
           ),
               ),
             SizedBox(height: 5,),
             Container(
               child: TextField(


                   decoration:InputDecoration(
                     labelText:" Street/Colony",


                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0),
                       borderSide: BorderSide(color: Colors.black),

                     ),


                   )
               ),
             ),
             SizedBox(height: 4,),
             Container(
               child: TextField(
                   keyboardType: TextInputType.number,


                   decoration:InputDecoration(
                     labelText:" Pin Code",


                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0),
                       borderSide: BorderSide(color: Colors.black),

                     ),


                   )
               ),
             ),
             SizedBox(height: 4,),
             Row(
               children:<Widget> [
                 Flexible(

                   child: TextField(
                       decoration:InputDecoration(
                         labelText: "City",

                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5.0),
                           borderSide: BorderSide(color: Colors.black),

                         ),


                       )
                   ),
                 ),

                 Flexible(

                   child: TextField(


                       decoration:InputDecoration(

                         labelText:" State",


                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5.0),
                           borderSide: BorderSide(color: Colors.black),

                         ),


                       )
                   ),
                 )
               ],
             ),

             SizedBox(height: 4,),
             Container(
               child: TextField(


                   decoration:InputDecoration(
                     labelText:" Landmark(Optional)",


                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5.0),
                       borderSide: BorderSide(color: Colors.black),

                     ),


                   )
               ),
             ),
             SizedBox(height: 20,),
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
                               MaterialPageRoute(builder: (context) =>check ()))
                         },
                         child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))

                     )
                     ])
             )

                      ],
                 )
           ),




           );







  }}


