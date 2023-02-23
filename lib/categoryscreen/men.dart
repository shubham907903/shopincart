import 'package:flutter/material.dart';
import 'package:shopincart/categoryscreen/tshirt.dart';
class men extends StatefulWidget {
  @override
  State<men> createState() => _HomepageState();
}
class _HomepageState extends State<men> {

  List<String> imageList=['assets/images/Boys.png',
  'assets/images/Boys.png','assets/images/Boys.png','assets/images/Boys.png','assets/images/Boys.png',
   'assets/images/Boys.png','assets/images/Boys.png','assets/images/Boys.png','assets/images/Boys.png',
    'assets/images/Boys.png','assets/images/Boys.png','assets/images/Boys.png','assets/images/Boys.png',
  ];

  Widget build (BuildContext context) {
    return men();
  }
  Widget men() {
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
        ' Men', style: TextStyle(color: Colors.lightBlue),),),
             body: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Center(
                 child: Padding( padding :const EdgeInsets.all(3.0),
    child:GridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 12,
    mainAxisSpacing: 10,),

    itemBuilder: (context,index){
    return Card( elevation: 1,margin:EdgeInsets.all(5.0),child:Center(
      child: InkWell(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => tshirt())),
          },


    child:Image.asset(imageList[index],fit: BoxFit.fill,width: double.infinity,height: double.infinity),

    ),
    )
    );

    } )
    ),



    ),
             ),

    );


  }}
