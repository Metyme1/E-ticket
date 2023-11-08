
import 'package:flutter/material.dart';

class CustomNavigationDestination {
  final IconData icon;
  final String label;


  CustomNavigationDestination({required this.icon, required this.label});
}

class CustomNavigationBar extends StatefulWidget {
  final List<CustomNavigationDestination> destinations;
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;

  CustomNavigationBar({
    required this.destinations,
    required this.backgroundColor,
    required this.selectedItemColor,
    required this.unselectedItemColor,
  });

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex=2;



  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/discover');
          break;
        case 1:
          Navigator.pushNamed(context, '/events');
          break;
        case 2:
          Navigator.pushNamed(context, '/travel');
          break;
        case 3:
          Navigator.pushNamed(context, '/tickets');
          break;
        case 4:
          Navigator.pushNamed(context, '/settings');
          break;
        default:
          break;
      }
    }
    return Container(
      color: widget.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.destinations.map((destination) {
          bool isSelected = widget.destinations.indexOf(destination) == _selectedIndex;
          return GestureDetector(
            onTap: () => _onItemTapped(widget.destinations.indexOf(destination)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  destination.icon,
                  color: isSelected ? widget.selectedItemColor : widget.unselectedItemColor,
                ),
                Text(
                  destination.label,
                  style: TextStyle(
                    color: isSelected ? widget.selectedItemColor : widget.unselectedItemColor,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

  List<CustomNavigationDestination> destinations = [
    CustomNavigationDestination(
      icon: Icons.explore,
      label: 'Explore',
    ),
    CustomNavigationDestination(
      icon: Icons.event,
      label: 'Events',
    ),
    CustomNavigationDestination(
      icon: Icons.directions_bus,
      label: 'Transport',
    ),
    CustomNavigationDestination(
      icon: Icons.confirmation_number,
      label: 'Tickets',
    ),
    CustomNavigationDestination(
      icon: Icons.settings,
      label: 'Settings',
    ),
  ];



