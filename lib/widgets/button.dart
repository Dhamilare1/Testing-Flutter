import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget { 
  final String name;
  
  const ButtonWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Text('Name: $name'),
    );
  }
}
