import 'package:flutter/material.dart';

class flashsale extends StatefulWidget {
  @override
  State<flashsale> createState() => _HomepageState();
}
class _HomepageState extends State<flashsale> {
  List<String> values=['assets/images/flash229.png',
    'assets/images/flash229.png','assets/images/flash229.png','assets/images/flash229.png',];

  Widget build(BuildContext context) {
    return flashsale();
  }

  Widget flashsale() {
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
        'F L A S H  S A L E', style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold)


    )
        ),
        body: Padding(
    padding: const EdgeInsets.all(3.0),
    child:Column(children: [

    SizedBox(
    height: 40.0,
    width: 300.0,
    child: Container(
    decoration: new BoxDecoration(
    image: new DecorationImage(image: new AssetImage('assets/images/Group225.png',),
    fit: BoxFit.fill)
    )
    )
    ),
      SizedBox(

          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context,index){
              return Card (
                  elevation: 4,child: Center(

                    child: Image.asset(values[index],),
                  )
              );

            },

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),



          )
      ),

      SizedBox(
          height: 50.0,
          width: 300.0,
          child: Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(image: new AssetImage('assets/images/Group234.png',),
                      fit: BoxFit.fill)
              )
          )
      ),
    ]
    )
        )
    );
  }
}





