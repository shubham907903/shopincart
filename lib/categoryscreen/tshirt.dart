import 'package:flutter/material.dart';




class tshirt extends StatefulWidget {
  @override
  State<tshirt> createState() => _HomepageState();
}
class _HomepageState extends State<tshirt> {
  List<String> values=['assets/images/tshirt1.png',
    'assets/images/tshirt1.png','assets/images/tshirt1.png','assets/images/tshirt1.png',];

  Widget build(BuildContext context) {
    return tshirt();
  }

  Widget tshirt() {
    return Scaffold(

      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

          ),
          elevation: 0.1,
          backgroundColor: Colors.white,
          title: const Text(
            'T-Shirts', style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold),),
          actions: <Widget>[

            new IconButton(
                icon: new Image.asset('assets/icon/notification.png',),
                onPressed: () {}),
            new IconButton(icon: new Image.asset(
              'assets/icon/shopping-cart.jpg', height: 25,),
                onPressed: () {}),
          ]
      ),


       body:Column(
    children:<Widget> [
    Expanded(flex: -1,
    child:


    Container(
color: Colors.blue,
    height: 60,
    width: 360,



    ),
       ),




    GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount:4,
                  itemBuilder: (context,index){
                    return Card (
                        elevation: 4,child: Center(


                      child: Image.asset(values[index],),
                    )
                    );

                  },

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

    )

               ] ),
    ) ;








  }
}




