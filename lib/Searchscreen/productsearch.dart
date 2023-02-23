import 'package:flutter/material.dart';
class productsearch extends StatefulWidget {
  @override
  State<productsearch> createState() => _HomepageState();
}
class _HomepageState extends State<productsearch> {
  List<String> values=['assets/images/search.png',
    'assets/images/search.png','assets/images/search.png','assets/images/search.png',];
  Widget build (BuildContext context) {
    return productsearch();
  }
  Widget productsearch() {
    return Scaffold(

      appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black, onPressed: () =>Navigator.of(context).pop(),

          ),
          elevation: 0.1,
          backgroundColor: Colors.white,
          title: const Text(
            ' Tshirts',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
      ),
      body: SizedBox(

          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
                  elevation: 4, child: Center(

                child: Image.asset(values[index],),
              )
              );
            },

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),


          )
      ),
    );
  }}