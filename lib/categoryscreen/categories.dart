import 'package:flutter/material.dart';
import 'package:shopincart/Screens/men.dart';
import 'package:shopincart/categoryscreen/men.dart';
import 'package:shopincart/categoryscreen/tshirt.dart';
class categories extends StatefulWidget {
  @override
  State<categories> createState() => _HomepageState();
}
class _HomepageState extends State<categories> {
  List<String> values=['assets/images/cat2.png',
  'assets/images/cat2.png','assets/images/cat3.png','assets/images/cat3.png',];

  Widget build (BuildContext context) {
    return categories();
  }
  Widget categories() {
    return Scaffold(

        appBar: AppBar(


            centerTitle: true,
            elevation: 0.1,
            backgroundColor: Colors.white,
            title: const Text(
              ' Explore Categories', style: TextStyle(color: Colors.lightBlue),),
            actions: <Widget>[


              new IconButton(icon: new Image.asset('assets/icon/notification.png'),
                  onPressed: () {}),
              new IconButton(icon: new Image.asset('assets/icon/shopping-cart.jpg',height: 25),
                  onPressed: () {}),
            ]
        ),
        body: Padding(
        padding: const EdgeInsets.all(3.0),
    child:Column(children: [

    SizedBox(
    height: 130.0,
    width: 350.0,
    child: Container(
    decoration: new BoxDecoration(
    image: new DecorationImage(image: new AssetImage('assets/images/cat1.png',),
    fit: BoxFit.fill)
    )
    )
    ,),
     SizedBox(

       child: GridView.builder(

         scrollDirection: Axis.vertical,

         shrinkWrap: true,
         itemCount: 4,
         itemBuilder: (context,index){
           return Card (
               elevation: 3,child: Center(
               child: InkWell(
               onTap: () => {
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => men())),
           },
               child: Image.asset(values[index],),
           )
           )
           );
         },

     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),



     )
     )
    ]
    )
        )
    );
  }
}