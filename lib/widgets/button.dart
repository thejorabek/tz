import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.onTap,
  });

  final double width;
  final double height;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(offset: Offset(0, 5), color: Colors.grey, blurRadius: 1)
            ]),
        width: width * .6,
        height: height * .1,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
