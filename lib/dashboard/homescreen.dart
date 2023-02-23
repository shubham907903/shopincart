
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopincart/dashboard/cart.dart';
import 'package:shopincart/dashboard/flashsale.dart';
import 'package:shopincart/dashboard/productdetails.dart';

import '../constant.dart';
import '../notifications/notification.dart';



class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {






  Container Myimage(String imageval,String Heading){
    return Container(


            width: 75.0,
            child: Card(

             elevation: 0.0,
              semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Wrap(

                    children: <Widget>[
                      Image.asset(imageval,fit: BoxFit.fill,),


                      ListTile(
                          title: Text(Heading),
                      )

                    ]
                )
            )
    );
  }
  Widget build (BuildContext context) {
    return Homepage();
}
  Widget Homepage(){

    return Scaffold(
        appBar: AppBar(

        elevation: 0.1,
       leading: Container(
          height: 10,width: 20,

          decoration: BoxDecoration(
              image: new DecorationImage(image: AssetImage("assets/images/profile.png",),fit: BoxFit.fill,),
          )),
        title:   Text('ShopinKarts',style: headingTextstyle),
          centerTitle: true,
        backgroundColor: Colors.white,



        actions:<Widget> [

          IconButton(icon: Image.asset('assets/icon/notification.png',),
                onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>notification()));
                }),
        badges.Badge(

            showBadge: true,
            position: badges.BadgePosition.topEnd(top: -3,end: 2),
            badgeContent: Text('3',style: TextStyle(fontSize: 13),),
            badgeStyle: badges.BadgeStyle(
            shape: badges.BadgeShape.circle,
            badgeColor: Colors.green,

          borderRadius: BorderRadius.circular(4.0),
          padding: EdgeInsets.all(6.0),
    ),
            child: IconButton(icon: Image.asset('assets/icon/shopping-cart.jpg',height: 26,),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));
                }),


        ),


              ],

        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:Column(children: [
                  TextFormField(
                  decoration: InputDecoration(
                  hintText: 'Search',
                  prefix:Icon(Icons.search),
                  fillColor: Colors.red,
                    border: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(20),


                    )
                ),
                  ),


      SizedBox(height: 12,),

       Container(


              height: 160.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: const [

              ExactAssetImage('assets/images/banner 1.jpeg'),
               ExactAssetImage('assets/images/banner 2.png'),


            ],
            autoplay: false,
            dotSize: 4.0,
            dotColor: Colors.blue,
            indicatorBgPadding: 2.0,

            animationCurve: Curves.fastOutSlowIn,
            animationDuration: const Duration(milliseconds: 1000),
          ),
      ),

SizedBox(height: 10.0),
     Align(
       alignment: Alignment.centerLeft,child: Text("Shop For",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
     )
      ,


     Container(
         margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5),
         height: 110,
         child: ListView(
         shrinkWrap: true,
             scrollDirection: Axis.horizontal,

             children: <Widget>[



              Myimage("assets/images/clo1.png","Men"),
              Myimage("assets/images/clo1.png","Men"),
             Myimage("assets/images/clo1.png","Men"),
             Myimage("assets/images/clo1.png","Men"),
             Myimage("assets/images/clo1.png","Men"),
             Myimage("assets/images/clo1.png","Men")
       ]
                  )
        ),

                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,child: Text("Preferred Manufacturer",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    )
                    ,

                    Container(
                        margin: EdgeInsets.symmetric(vertical: 1.0,horizontal: 5.0),
                        height: 145,
                        child: ListView(

                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[


                              Container(

                                width: 170.0,
                                child: Card(
                                  child: Wrap(
                                      children: <Widget>[


                                      Image.asset("assets/images/polo.png",fit: BoxFit.fill),
                               ] )
                                )
                              ),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                            Image.asset("assets/images/polo.png",fit: BoxFit.fill),
                                          ] )
                                  )
                              ),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                            Image.asset("assets/images/polo.png",fit: BoxFit.fill),
                                          ], ),
                                  )
                              ),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                            Image.asset("assets/images/polo.png",fit: BoxFit.fill),
                                          ] )
                                  )
                              ),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                            Image.asset("assets/images/polo.png",fit: BoxFit.fill),
                                          ] )
                                  )
                              ),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                            Image.asset("assets/images/polo.png",fit: BoxFit.fill),
                                          ] )
                                  )
                              ),
                            ]
                  )
                    ),

                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,child: Text("Most Popular",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    )
                    ,

                    Container(

                        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                        height: 140,

                        child: ListView(

                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[

                               Container(
                                 height: 90,
                                  width: 140.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                          InkWell(
                                          onTap: () => {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>detail())),
                                  },
                                            child: Image.asset("assets/images/home4.png",height:120,width:165,fit: BoxFit.fill),
                                          ) ] )
                                  )
                              ),
                               Container(
                                  width: 140.0,

                                  child: Card(

                                      child: Wrap(
                                          children: <Widget>[

                                          InkWell(
                                          onTap: () => {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>detail())),
                                  },
                                      child: Image.asset("assets/images/home4.png",height:120,width:165,fit: BoxFit.fill),
                                          ),] ),
                                  )
                              ),
                               Container(
                                  width: 140.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                          InkWell(
                                          onTap: () => {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>detail())),
                                  },
                                            child: Image.asset("assets/images/home4.png",height:120,width:165,fit: BoxFit.fill),
                                          ) ] )
                                  )
                              ),
                               Container(
                                  width: 140.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                          InkWell(
                                          onTap: () => {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>detail())),
                                  },
                                      child: Image.asset("assets/images/home4.png",height:120,width:165,fit: BoxFit.fill),
                                          ) ] )
                                  )
                              ),
                              Container(
                                  width: 140.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                          InkWell(
                                          onTap: () => {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>detail())),
                                  },
                                            child: Image.asset("assets/images/home4.png",height:120,width:165,fit: BoxFit.fill),
                                          ) ] )
                                  )
                              ),
                              Container(

                                  width: 140.0,
                                  child: Card(
                                      child: Wrap(
                                          children: <Widget>[
                                          InkWell(
                                          onTap: () => {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>detail())),
                                  },
                                            child: Image.asset("assets/images/home4.png",height: 120,width:165,fit: BoxFit.fill),
                                          )  ] )
                                  )
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                        height: 120,
                        child: Column(
                          children: [
                            InkWell(
                            onTap: () => {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>flashsale ())),
                    },

                            child: Text('F L A S H    S A L E',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25))
                            ) ],
                        )
                    ),

    ]  )


    )
        )
    );

  }


}


















