import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_application/provider/todos.dart';
import 'package:to_do_application/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: const Color(0xFFF6F5EE)),
        home: HomeScreen(),
      ),
    );
  }
}
