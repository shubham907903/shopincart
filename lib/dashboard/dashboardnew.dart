import 'package:flutter/material.dart';
import 'package:shopincart/profilescreen/account.dart';
import 'package:shopincart/categoryscreen/categories.dart';
import 'package:shopincart/dashboard/homescreen.dart';
import 'package:shopincart/dashboard/orders.dart';

class dashboard extends StatefulWidget {
  @override
  State<dashboard> createState() => _HomepageState();
}
class _HomepageState extends State<dashboard> {
  int _currentIndex=0;
  final List<Widget> _children=[
    Homepage(),
    categories(),
    orders(),
    account(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex=index;
    });
  }




  Widget build (BuildContext context) {
    return dashboard();
  }
  Widget dashboard (){
    return Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items:[
        BottomNavigationBarItem(icon: Image.asset("assets/icon/home.png",height: 40,width: 40,),
          label:"Home",),

        BottomNavigationBarItem(icon: Image.asset("assets/icon/cat.png",height: 40,width: 40,),
          label: "categories"),


        BottomNavigationBarItem(icon: Image.asset("assets/icon/ecart1.png",height: 40,width: 40,),
    label:"Order"),


        BottomNavigationBarItem(icon: Image.asset("assets/icon/account.png",height: 40,width: 40,),label:"Account"),
       ] ),


    );
  }
}