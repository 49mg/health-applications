import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app/widgets/input_field.dart';
import '../widgets/next_page_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // sized tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // logo and virus icon
            Container(
              width: width,
              height: height * 0.30,
              decoration: const BoxDecoration(
                color: Color(0xffF3A324),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200.0),
                  bottomRight: Radius.circular(200.0),
                ),
              ),
              child: Stack(
                children: [
                  // Three-dots-vertical.svg
                  Positioned(
                    top: 15,
                    right: 10,
                    child: SvgPicture.asset(
                      "assets/images/Three-dots-vertical.svg",
                      color: Colors.white,
                    ),
                  ),

                  // welcome text and logo
                  const Align(
                    alignment: Alignment.center,
                    child: Image(
                      color: Colors.white,
                      image: AssetImage(
                        "assets/images/welcomeText.png",
                      ),
                    ),
                  ),

                  // virus1 picture
                  Positioned(
                    left: 155,
                    top: 75,
                    child: SvgPicture.asset("assets/images/virus1.svg",
                        color: Colors.white),
                  ),

                  // virus2 picture
                  Positioned(
                    left: 220,
                    top: 95,
                    child: SvgPicture.asset("assets/images/virus2.svg",
                        color: Colors.white),
                  ),

                  // virus1 second picture
                  Positioned(
                    height: 25,
                    left: 85,
                    bottom: 60,
                    child: SvgPicture.asset("assets/images/virus1.svg",
                        color: Colors.white),
                  ),
                ],
              ),
            ),

            // sized box
            SizedBox(height: height * 0.047),

            // text => Hallo, Silahkan lengkapi data diri anda di sini:
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Hallo,\n",
                    style: TextStyle(
                      color: Color(0xffF3A324),
                      fontSize: 37.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Silahkan lengkapi data diri anda\ndi sini:",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Color(0xff414141),
                      fontSize: 20.5,
                    ),
                  ),
                ]
              ),
            ),

            // sized box
            SizedBox(height: height * 0.022),

            const InputField(title: "Nama Lengkap"),
            const InputField(title: "No KTP"),
            const InputField(title: "Lokasi Vaksin"),
            const InputField(title: "No Handphone"),

            SizedBox(height: height * 0.02),
            
            ApplicationButton(text: "SUBMIT", color: const Color(0xff0DC7C0), onTap: (){}),
          ],
        ),
      ),
    );
  }
}
