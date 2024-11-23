import 'package:flight_app/appScreens/homePage.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {

  final appPages = [
    const  HomePage(),
    const Center(child: Text("Search"),),
    const Center(child: Text("Ticket"),),
    const Center(child: Text("Profile"),),
  ];

  int _selectedIndex = 0;

  void _onSelectedIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text(
          "Flight Booking",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white,
              shadows: [Shadow(offset: Offset(2.0, 2.0), color: Colors.black, blurRadius: 1.0)]
          ),
        ),
        elevation: 3.0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),*/
      body: appPages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        iconSize: 26, selectedFontSize: 12,
        unselectedFontSize: 12,
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onSelectedIndex,
        currentIndex: _selectedIndex,
  
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: "Ticket"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: "Profile"),
    ]
    ),
    );
  }
}
