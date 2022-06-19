import 'package:flutter/material.dart';
// import 'package:receivesharing/ui/pages/record_video.dart';

// class HomePanel extends StatefulWidget {
//   const HomePanel({Key? key}) : super(key: key);

//   @override
//   State<HomePanel> createState() => _HomePanelState();
// }

// class _HomePanelState extends State<HomePanel> {
//   int _selectedIndex = 0;
//   // final pages = [ 
//   //   const CameraApp(),  
//   //   const CameraApp(),  
//   //   const CameraApp(),  
//   //   const CameraApp(),  
//   // ]; 
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Settings',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Panel'),
//       ),
//       body: _widgetOptions[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.library_add),
//             label: 'Library',
//             backgroundColor: Colors.red,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.video_call),
//             label: 'Record',
//             backgroundColor: Colors.green,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.show_chart),
//             label: 'Progress Report',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Get tips',
//             backgroundColor: Colors.pink,
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }


import 'package:receivesharing/ui/pages/camera_page.dart';
import 'package:receivesharing/ui/pages/camera_screen.dart';
import 'package:receivesharing/ui/pages/captures_screen.dart';
import 'package:receivesharing/ui/pages/record_video.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    RecordVideo(), //CameraPage()
    RecordVideo(), //CameraPage()
    RecordVideo() //CameraPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'Library', backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.mail, size: 30), label: 'Record', backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, size: 30), label: 'Progress Report', backgroundColor: Colors.purple),
          ],
          selectedItemColor: Colors.amber[800],
          elevation: 5.0,
          unselectedItemColor: Colors.orange[900],
          currentIndex: selectedPage,
          // backgroundColor: Colors.white,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}