import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopincart/dashboard/cart.dart';
import 'package:shopincart/dashboard/review.dart';

import 'checkout.dart';
class detail extends StatefulWidget {
  @override
  State<detail> createState() => _HomepageState();
}
class _HomepageState extends State<detail> {
  List sizes=[
    'S',
    'M',
    'X',
    'XL',
  ];







  Widget build (BuildContext context) {
    return detail();
  }

  Widget detail(){

    return Scaffold(


        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

            ),
        centerTitle: false,
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: const   Text('Product Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    actions: <Widget>[
      new IconButton(icon: new Image.asset('assets/icon/shopping-cart.jpg',height: 25,),
    onPressed: () {}),
    ]
        ),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child:Column(children: [

            SizedBox(
            height: 130.0,
            width: 350.0,
            child: Container(
                decoration: new BoxDecoration(
                    image: new DecorationImage(image: new AssetImage('assets/images/Frame28.png',),
                        fit: BoxFit.fill)
                )
            )
            ,),
          Container(


            height: 30,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children:[
    
      Column(children:[Text("Blazer Tshirt-Nike",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))],),
    Spacer(),
    Image.asset('assets/images/Frame238.png',height: 25.0,alignment: Alignment.topRight)
    ]
            )
      ),
            Container(


                height: 30,
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children:[

                      Column(children:[Text("Rs 100.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))],),
                      Spacer(),
                      Image.asset('assets/images/Frame239.png',height: 25.0,alignment: Alignment.topRight)
                    ]
                )
            ),
            Container(
              alignment: Alignment.topLeft,
              height:30,
                child:RatingBarIndicator(
                  rating: 4,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 30.0,
                  direction: Axis.horizontal,
                ),
                ),
            SizedBox(


                height: 50,
                child:Column(


                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,


                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft
                    ),


                    Image.asset('assets/images/Group56.png',height: 20,
                        ),


                      Image.asset('assets/images/Group264.png',fit:BoxFit.cover,height: 20,
                          ),
                  ]
            ),
            ),

          SizedBox(height: 5,),

            Column(
              children:<Widget> [
             Align(alignment: Alignment.topLeft,child: new Text("Select Color",style: TextStyle(fontWeight: FontWeight.bold)),)
              ]
            ),


          Row(
            children: [
              Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.all(13),
            decoration: const BoxDecoration(
              color:Colors.pink,
              borderRadius: BorderRadius.horizontal(),


          )

          ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: const BoxDecoration(
                  color:Colors.red,
                  borderRadius: BorderRadius.horizontal(),


                )

            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: const BoxDecoration(
                  color:Colors.blue,
                  borderRadius: BorderRadius.horizontal(),


                )

            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: const BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.horizontal(),


                )

            ),


              ]),
            SizedBox(height: 5,),

            Column(
                children:<Widget> [
                  Align(alignment: Alignment.topLeft,child: new Text("Select Size",style: TextStyle(fontWeight: FontWeight.bold),),),
                  Align(alignment: Alignment.topRight,
                    child: new Text("Quantity",style: TextStyle(fontWeight: FontWeight.bold)),)
                ]
            ),

            Row(
              children:<Widget> [
                SizedBox(width: 8,),
          for (int i=0; i<sizes.length; i++)
            Container(
               margin: EdgeInsets.symmetric(horizontal: 5),
               padding: EdgeInsets.all(6),
               decoration: BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.horizontal(),
    ),
              child: Text(sizes[i]),

            ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(left: 145,right: 5),
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(),
                  ),

                  child: Icon(
                    CupertinoIcons.plus,

                    size: 18,
                    color: Colors.black,
                  ),

                ),SizedBox(height: 10,),
                Text("01",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                Container(
                  alignment: Alignment.topRight,

                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(),
                  ),

                  child:Align(alignment: Alignment.topRight,
                    child: Icon(
                    CupertinoIcons.minus,
                    size: 18,
                    color: Colors.black,
                  ),

                ),



                )
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children:[


                InkWell(
                    onTap:(){} ,

                    child: const ListTile(
                      visualDensity: VisualDensity(horizontal: 4,vertical: -4),
                      title: Text('Product Description'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      minVerticalPadding: 2,

                    )
                ),
                Divider(),
                InkWell(
                    onTap:(){} ,
                    child: const ListTile (
                      visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                      title: Text('Product Checklist'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      minVerticalPadding: 2,

                    )),
                Divider(),
                InkWell(
                    onTap:(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>readreview()));
    },

                    child: const ListTile(

                      visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                      title: Text('Read Reviews'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      minVerticalPadding: -5,
                    )
                ),
               Divider(),
                InkWell(
                    onTap:(){} ,
                    child: const ListTile(
                      visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                      title: Text('Delivery Instructions'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )
                ),
                InkWell(
                  onTap:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>cart()));
                  },
                 child:Row(
                   children:[


                     Container(

                         color: Colors.blue,

                         height: 40,
                         width: 175,
                         padding: EdgeInsets.all(8.0),
                         child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children:<Widget>[InkWell(
                                 onTap: () => {
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) =>cart ()))
                                 },
                                 child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))

                             )
                             ])

                     ),SizedBox(width: 10,),
                     Container(

                    color: Colors.blue,

                    height: 40,
                    width: 169,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:<Widget>[InkWell(
                            onTap: () => {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>cart ()))
                            },
                            child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))

                        )
                        ])
                ),
]
            )
          ),
]
        )
    ])
    )
        )
    );

}}
class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return  Container();
  }
}












 




