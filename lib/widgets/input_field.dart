import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  const InputField({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // sized tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46.0, vertical: 10.5),
      child: Container(
        width: width,
        height: height * 0.06,
        decoration: BoxDecoration(
          color: const Color(0xffE8E8E8),
          borderRadius: BorderRadius.circular(12.5),
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Colors.grey.shade700,
            fontSize: 18.5,
          ),
        )),
      ),
    );
  }
}
