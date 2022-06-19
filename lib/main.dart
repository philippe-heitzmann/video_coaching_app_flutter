import 'package:flutter/material.dart';
import 'package:receivesharing/my_app.dart';

// import 'package:receivesharing/config/app_config.dart';

//Setting up multiple dev, staging, prod environments
// https://medium.com/flutter-community/add-multiple-targets-in-flutter-apps-vs-code-android-studio-efe7e588e0cd

import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];

// void main() {
//   runApp(MyApp());
// }

Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(MyApp());
}

// Future <void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   cameras =await availableCameras();
//   runApp(const MyApp(cameras: cameras));
// }

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



