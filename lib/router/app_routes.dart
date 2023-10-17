import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {    
    'listview1':(BuildContext context) => const ListView1Screen(),
    'listview2':(BuildContext context) => const ListView2Screen(),
    'card':(BuildContext context) => const CardScreen(),
    'alert':(BuildContext context) => const AlertScreen(),
    'home':(BuildContext context) => const HomeScreen(), 
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
     return MaterialPageRoute(builder:(context) => const AlertScreen());
  }



}