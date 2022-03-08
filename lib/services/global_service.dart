import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final globalsProvider = Provider((_) => GlobalService());

class GlobalService {
  final navigatorKey = GlobalKey<NavigatorState>();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  NavigatorState get navigator => navigatorKey.currentState!;

  ScaffoldMessengerState get scaffoldMessenger => scaffoldMessengerKey.currentState!;
}
