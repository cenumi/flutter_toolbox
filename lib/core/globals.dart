import 'package:flutter/material.dart';

class Globals {
  Globals._();

  static final navigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static NavigatorState get navigator => navigatorKey.currentState!;

  static ScaffoldMessengerState get scaffoldMessenger => scaffoldMessengerKey.currentState!;
}
