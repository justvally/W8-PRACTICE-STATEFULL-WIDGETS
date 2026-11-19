// EX 1 – The selectable button (handout page: EX 1). Start code from the handout.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SelectableButton(),
              const SelectableButton(),
              const SelectableButton(),
              const SelectableButton(),
            ],
          ),
        ),
      ),
    ));

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
  });

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool _isSelected = false;

  String get buttonText => _isSelected ? "Selected" : "Not selected";
  Color get textColor => _isSelected ? Colors.white : Colors.black;
  Color get backgroundColor =>
      _isSelected ? Colors.blue[500]! : Colors.blue[50]!;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: ElevatedButton(
          onPressed: _toggleSelection,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
          ),
          child: Center(
            child: Text(buttonText),
          ),
        ),
      ),
    );
  }
}
