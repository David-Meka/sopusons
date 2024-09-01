import 'package:flutter/material.dart';

class ChoiceChipWithoutCheck extends StatefulWidget {
  final String label;
  final bool selected;
  final Function(bool) onChanged;

  const ChoiceChipWithoutCheck({
    Key? key,
    required this.label,
    required this.selected,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ChoiceChipWithoutCheckState createState() =>
      _ChoiceChipWithoutCheckState();
}

class _ChoiceChipWithoutCheckState extends State<ChoiceChipWithoutCheck> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.label),
      selected: widget.selected,
      selectedColor: Colors.blue,
      onSelected: (bool value) {
        widget.onChanged(value);
      },
      // Remove the default check icon
    
    );
  }
}