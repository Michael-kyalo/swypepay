import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationService{
  GlobalKey<NavigatorState> navigationKey;
  static NavigationService instance = NavigationService();

  NavigationService(){
    navigationKey = GlobalKey<NavigatorState>();
  }
  Future<dynamic> navigateToReplacement(String _route) {
    return navigationKey.currentState.pushReplacementNamed(_route);
  }
  Future<dynamic> navigateTo(String _route) {
    return navigationKey.currentState.pushNamed(_route);
  }
  Future<dynamic> navigateToRoute(MaterialPageRoute _route) {
    return navigationKey.currentState.push(_route);
  }

  popRoute(){
    return navigationKey.currentState.pop();
  }
}