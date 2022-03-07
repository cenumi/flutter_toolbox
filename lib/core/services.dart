import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/services/flutter_service.dart';
import 'package:flutter_toolbox/services/global_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';

final globalServiceProvider = Provider((_) => GlobalService());

final flutterServiceProvider =
    StateNotifierProvider<FlutterService, FlutterServiceValues>((ref) => FlutterService(ref.read));

final localStorageServiceProvider = Provider((_) => LocalStorageService());
