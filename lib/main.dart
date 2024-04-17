import 'package:flutter/material.dart';
import 'package:flutter_todo_riverpod_gorouter_firebase/src/app.dart';
// ignore:depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Turn off the # in the URLs on the web
  usePathUrlStrategy();
  runApp(const MyApp());
}
