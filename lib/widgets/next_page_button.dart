import 'package:flutter/material.dart';

class ApplicationButton extends StatelessWidget {

  final Color color;
  final VoidCallback onTap;
  final String text;
  const ApplicationButton({Key? key, required this.color, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // sized tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width * 0.83,
        height: height * 0.08,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 2),
                  blurRadius: 3.0
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 2),
                  blurRadius: 3.0
              ),
            ]
        ),
        child: Center(
          child: Text(text, style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            letterSpacing: 0.8,
          ),
          ),
        ),
      ),
    );
  }
}
