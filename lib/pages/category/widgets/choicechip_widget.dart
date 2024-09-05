import 'package:flutter/material.dart';

class ChoicechipWidget extends StatefulWidget {
  @override
  _ChoiceChipsScreenState createState() => _ChoiceChipsScreenState();
}

class _ChoiceChipsScreenState extends State<ChoicechipWidget> {
  int _selectedIndex = 0;

  final List<String> _chipLabels = [
    'Laptop',
    'Phones',
    'Headsets',
    'Chargers',
    'Smartwatches',
    'Tablets',
    'Laptop Batteries',
    'BT Speakers',
    'Mouse',
    'Keyboards',
    'Cameras',
    'Playstations',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choice Chips'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: List.generate(_chipLabels.length, (index) {
            return ChoiceChip(
              label: Text(_chipLabels[index]),
              selected: _selectedIndex == index,
              onSelected: (bool selected) {
                setState(() {
                  _selectedIndex = selected ? index : _selectedIndex;
                });
              },
              selectedColor: Colors.blue,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.grey),
              ),
              avatar: null,
            
              // _getIconForLabel(_chipLabels[index]),
            );
          }),
        ),
      ),
    );
  }

  Widget? _getIconForLabel(String label) {
    switch (label) {
      case 'Laptop':
        return Icon(Icons.laptop, size: 20);
      case 'Phones':
        return Icon(Icons.phone_android, size: 20);
      case 'Headsets':
        return Icon(Icons.headset, size: 20);
      case 'Chargers':
        return Icon(Icons.battery_charging_full, size: 20);
      case 'Smartwatches':
        return Icon(Icons.watch, size: 20);
      case 'Tablets':
        return Icon(Icons.tablet, size: 20);
      case 'Laptop Batteries':
        return Icon(Icons.battery_full, size: 20);
      case 'BT Speakers':
        return Icon(Icons.speaker, size: 20);
      case 'Mouse':
        return Icon(Icons.mouse, size: 20);
      case 'Keyboards':
        return Icon(Icons.keyboard, size: 20);
      case 'Cameras':
        return Icon(Icons.camera_alt, size: 20);
      case 'Playstations':
        return Icon(Icons.videogame_asset, size: 20);
      default:
        return null;
    }
  }
}
