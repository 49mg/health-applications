import 'package:flutter/material.dart';

class DoctorPicture extends StatelessWidget {
  const DoctorPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.283,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(504),
          bottomLeft: Radius.circular(504),
        ),
        image: DecorationImage(
          image: AssetImage("assets/images/doctors.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}