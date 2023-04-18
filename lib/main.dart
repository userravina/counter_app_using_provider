import 'package:counter_app_using_provider/screen/provider/counter_provider.dart';
import 'package:counter_app_using_provider/screen/view/counter_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(

      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => Counter_UI(),
        },
      ),
    ),
  );
}
