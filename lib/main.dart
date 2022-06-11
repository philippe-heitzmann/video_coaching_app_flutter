import 'package:flutter/material.dart';
import 'package:receivesharing/my_app.dart';

// import 'package:receivesharing/config/app_config.dart';

//Setting up multiple dev, staging, prod environments
// https://medium.com/flutter-community/add-multiple-targets-in-flutter-apps-vs-code-android-studio-efe7e588e0cd


void main() {
  runApp(MyApp());
}

// void main() {
//   var appConfig = AppConfig(
//     appEnvironment: AppEnvironment.DEV,
//     appName: 'D2GO Dev',
//     description: 'This is a Development version of D2GO',
//     baseUrl: 'https://dev-appname.com/api',
//     themeData: ThemeData(
//       primarySwatch: Colors.red,
//       primaryColor: Colors.blueGrey,
//     ),
//     child: MyApp(),
//   );
//   runApp(appConfig);
// } 



