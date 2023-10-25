import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_bus),
          label: 'Transportation',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_number),
          label: 'Tickets',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        // Handle navigation to different routes based on the index
        switch (index) {
          case 0: // Explore
            Navigator.pushNamed(context, '/explore');
            break;
          case 1: // Events
            Navigator.pushNamed(context, '/events');
            break;
          case 2: // Transportation
            Navigator.pushNamed(context, '/transportation');
            break;
          case 3: // Tickets
            Navigator.pushNamed(context, '/tickets');
            break;
          case 4: // Settings
            Navigator.pushNamed(context, '/settings');
            break;
        }
      },
    );
  }
}
