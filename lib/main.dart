import 'package:flutter/material.dart';
import 'package:shopincart/Screens/login_screen.dart';
import 'package:shopincart/Screens/signup_screen.dart';
import 'package:shopincart/Screens/splashscreen.dart';
import 'package:shopincart/categoryscreen/categories.dart';
import 'package:shopincart/dashboard/dashboardnew.dart';
import 'package:shopincart/Screens/men.dart';
import 'package:shopincart/dashboard/homescreen.dart';
import 'package:shopincart/dashboard/productdetails.dart';
import 'package:shopincart/flashsale.dart';
import 'dashboard/cart.dart';
import 'dashboard/checkfinal.dart';
import 'dashboard/checkout.dart';
import 'dashboard/flashsale.dart';
import 'categoryscreen/men.dart';
import 'package:shopincart/forgotscreens/passwordreset.dart';
import 'package:shopincart/categoryscreen/tshirt.dart';
import 'package:shopincart/notifications/notification.dart';
import 'package:shopincart/Searchscreen/productsearch.dart';
import 'package:shopincart/dashboard/review.dart';
import 'package:shopincart/profilescreen/transaction.dart';

import 'dashboard/ordersuccess.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashscreen()
    );
  }
}
