import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba/bloc/home/homeBloc.dart';
import 'package:prueba/ui/homePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Prueba',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (_) => HomeBloc(), child: HomePage())
    );
  }

}