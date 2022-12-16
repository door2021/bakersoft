import 'package:flutter/material.dart';
import 'package:sibol/app/screens/MainScreen.dart';
import 'package:sibol/injection/config.dart' as x;

import 'app/screens/ProductsOverviewScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await x.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baker Soft',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

