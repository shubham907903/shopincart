import 'package:flutter/material.dart';

class orders extends StatefulWidget {
  @override
  State<orders> createState() => _HomepageState();
}
class _HomepageState extends State<orders> {

  Widget build(BuildContext context) {
    return orders();
  }

  Widget orders() {
    return Scaffold(

        appBar: AppBar(
            centerTitle: true,
            elevation: 0.1,
            backgroundColor: Colors.white,
            title: const Text(
              'Orders', style: TextStyle(color: Colors.lightBlue),),
            actions: <Widget>[
              new IconButton(icon: new Image.asset('assets/icon/notification.png'),
                  onPressed: () {}),
              new IconButton(icon: new Image.asset('assets/icon/shopping-cart.jpg',height: 25),
                  onPressed: () {}),
            ]
        ));
  }
}