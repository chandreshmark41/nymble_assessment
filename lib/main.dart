import 'package:flutter/material.dart';
import 'package:nymble_assessment/api_calls/dynamic_widget_service.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';
import 'package:nymble_assessment/factory/widget_factory.dart';
import 'package:nymble_assessment/screens/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(141414)),
        useMaterial3: true,
      ),
      home:  const MyHomePage(title: 'Nymble Assessment'),
    );
  }
}

