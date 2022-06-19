import 'package:flutter/material.dart';
import 'package:receivesharing/ui/home/home_screen.dart';
import 'package:receivesharing/login_demo.dart';
import 'package:receivesharing/ui/pages/camera_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginDemo(), //CameraPage()
    );
  }
}