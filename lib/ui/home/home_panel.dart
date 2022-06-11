import 'package:flutter/material.dart';
// import 'package:receivesharing/ui/pages/record_video.dart';

class HomePanel extends StatefulWidget {
  const HomePanel({Key? key}) : super(key: key);

  @override
  State<HomePanel> createState() => _HomePanelState();
}

class _HomePanelState extends State<HomePanel> {
  int _selectedIndex = 0;
  // final pages = [ 
  //   const CameraApp(),  
  //   const CameraApp(),  
  //   const CameraApp(),  
  //   const CameraApp(),  
  // ]; 
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Panel'),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Library',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Record',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Progress Report',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Get tips',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


//  @override 

//   Widget build(BuildContext context) { 

//     return Scaffold( 

//       backgroundColor: const Color(0xffC4DFCB), 

//       appBar: AppBar( 

//         leading: Icon( 

//           Icons.menu, 

//           color: Theme.of(context).primaryColor, 

//         ), 

//         title: Text( 

//           "Geeks For Geeks", 

//           style: TextStyle( 

//             color: Theme.of(context).primaryColor, 

//             fontSize: 25, 

//             fontWeight: FontWeight.w600, 

//           ), 

//         ), 

//         centerTitle: true, 

//         backgroundColor: Colors.white, 

//       ), 

//       body: pages[pageIndex], 

//       bottomNavigationBar: buildMyNavBar(context), 

//     ); 

//   } 