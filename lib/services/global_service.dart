import 'package:flutter/material.dart';

class GlobalService {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  NavigatorState get navigator => navigatorKey.currentState!;

  ScaffoldMessengerState get scaffoldMessenger => scaffoldMessengerKey.currentState!;
}
