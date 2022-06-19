// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   _cameras = await availableCameras();
//   runApp(const CameraApp());
// }

// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({Key? key}) : super(key: key);

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   late List<CameraDescription> _cameras;
//   late CameraController _controller;

//   Future<void> setupCameras() async {
//     try {
//       _cameras = await availableCameras();
//       _controller = new CameraController(_cameras[0], ResolutionPreset.ultraHigh);
//       await _controller.initialize();
//   }

//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: setupCameras(),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         return AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: CameraPreview(_controller)
//         );
//       };
//     );
//   }
// }
// }
// //   @override
// //   void initState() {
// //     super.initState();
// //     controller = CameraController(_cameras[0], ResolutionPreset.max);
// //     controller.initialize().then((_) {
// //       if (!mounted) {
// //         return;
// //       }
// //       setState(() {});
// //     }).catchError((Object e) {
// //       if (e is CameraException) {
// //         switch (e.code) {
// //           case 'CameraAccessDenied':
// //             print('User denied camera access.');
// //             break;
// //           default:
// //             print('Handle other errors.');
// //             break;
// //         }
// //       }
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     if (!controller.value.isInitialized) {
// //       return Container();
// //     }
// //     return MaterialApp(
// //       home: CameraPreview(controller),
// //     );
// //   }
// // }