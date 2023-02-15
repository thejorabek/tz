import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
    );
  }
}
