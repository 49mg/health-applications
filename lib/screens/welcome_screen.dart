import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/widgets/next_page_button.dart';
import '../widgets/doctors_picture.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // sized tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Column(
        children: [

          // doctor picture
          const DoctorPicture(),

          // sized box
          SizedBox(height: height * 0.10),

          // welcome logo
          Container(
            color: Colors.white,
            width: width,
            height: height * 0.25,
            child: Stack(
              children: [
                // welcome text and app logo
                const Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage("assets/images/welcomeText.png"),
                  ),
                ),

                // virus1 first picture
                Positioned(
                  left: 155,
                  bottom: 175,
                  child: SvgPicture.asset("assets/images/virus1.svg"),
                ),

                // virus2 picture
                Positioned(
                  left: 220,
                  bottom: 155,
                  child: SvgPicture.asset("assets/images/virus2.svg"),
                ),

                // virus1 second picture
                Positioned(
                  height: 25,
                  left: 70,
                  bottom: 60,
                  child: SvgPicture.asset("assets/images/virus1.svg"),
                ),
              ],
            ),
          ),

          // welcome text
          const Text(
            "Lindungi Diri dan Keluarga\ndengan Vaksinasi Covid-19",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color(0xff414141),
              letterSpacing: 0.1,
            ),
          ),

          // sized box
          SizedBox(height: height * 0.08),

          // circle indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 12,
                height: 22,
                decoration: const BoxDecoration(
                    color: Color(0xffF9B64B), shape: BoxShape.circle),
              ),

              // sized box
              SizedBox(width: width * 0.03),

              Container(
                width: 12,
                height: 22,
                decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4), shape: BoxShape.circle),
              ),

              // sized box
              SizedBox(width: width * 0.03),

              Container(
                width: 12,
                height: 22,
                decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4), shape: BoxShape.circle),
              ),
            ],
          ),

          // sized box
          SizedBox(height: height * 0.04),

          // this buttons will take you to home pages
          ApplicationButton(
              color: const Color(0xff0DC7C0),
              text: "NEXT",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              }),
        ],
      ),
    );
  }
}