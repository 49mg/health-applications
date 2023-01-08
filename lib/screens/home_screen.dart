import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app/screens/register_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // sized tools
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<String> cardType = ["Kasus", "Sembuh", "Meninggal"];
    List<Color> cardColor = [
      const Color(0xffF9B64B),
      const Color(0xff12D2C5),
      const Color(0xffF9B64B)
    ];
    List<String> cardSalary = ["2,03 jt", "1,82 jt", "55.594"];
    List<Color> doctorCardColor = [
      const Color(0xffCECECE),
      const Color(0xffE8E8E8)
    ];
    List<String> doctorCardPicture = [
      "assets/images/doctor2.png",
      "assets/images/doctor3.png"
    ];
    List<Row> doctorCardStars = [
      Row(
        children: const [
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
        ],
      ),
      Row(
        children: const [
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
          Icon(Icons.star, color: Color(0xffF9B446), size: 23.0),
        ],
      )
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // search bar and user icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // search field
                      Container(
                        width: width * 0.7,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          color: const Color(0xffE8E8E8),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.search,
                              color: Color(0xffC7C7C7),
                              size: 35.0,
                            ),
                            Text(
                              "Find your vaccine location",
                              style: TextStyle(
                                  color: Color(0xffC7C7C7), fontSize: 17.0),
                            )
                          ],
                        ),
                      ),

                      // user icon
                      const CircleAvatar(
                        backgroundColor: Color(0xff12D2C5),
                        radius: 28.5,
                        child: Center(
                            child: Icon(Icons.person_outline_sharp,
                                color: Color(0xffF2F2F2), size: 30.5)),
                      ),
                    ],
                  ),

                  // Sized box
                  SizedBox(height: height * 0.03),

                  // applications card ( salary and type card )
                  SizedBox(
                    width: width,
                    height: height * 0.09,
                    child: ListView.separated(
                      itemCount: cardType.length,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, index) => SizedBox(
                        width: width * 0.04,
                      ),
                      itemBuilder: (_, index) => Container(
                        width: width * 0.28,
                        decoration: BoxDecoration(
                          color: cardColor[index],
                          borderRadius: BorderRadius.circular(18.5),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 27,
                              bottom: 20,
                              child: Text(
                                cardSalary[index],
                                style: const TextStyle(
                                  color: Color(0xffF2F2F2),
                                  fontSize: 18.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 7.0,
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 2.0,
                                  bottom: 2.0,
                                  right: 10.0,
                                  left: 3.0,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12.5),
                                      topLeft: Radius.circular(5.5)),
                                ),
                                child: Text(
                                  cardType[index],
                                  style: const TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff414141),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.0158),

                  // text => INFORMASI VAKSIN
                  Container(
                    width: width * 0.5,
                    height: height * 0.04,
                    decoration: const BoxDecoration(
                        color: Color(0xff12D2C5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.8),
                            topRight: Radius.circular(12.8))),
                    child: const Center(
                      child: Text(
                        "INFORMASI VAKSIN",
                        style: TextStyle(
                          color: Color(0xffF2F2F2),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.8,
                        ),
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.0158),

                  // patients picture
                  SizedBox(
                    width: width,
                    height: height * 0.18,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // child picture
                          Container(
                            width: width * 0.80,
                            height: height * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.8),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/childPicture.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // sized box
                          SizedBox(width: width * 0.06),

                          // full doctor picture
                          Container(
                            width: width * 0.80,
                            height: height * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.8),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/fullDoctorPicture.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.0158),

                  // text => RUMAH SAKIT TERDEKAT
                  Container(
                    width: width * 0.6,
                    height: height * 0.04,
                    decoration: const BoxDecoration(
                        color: Color(0xff12D2C5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.8),
                            topRight: Radius.circular(12.8))),
                    child: const Center(
                      child: Text(
                        "RUMAH SAKIT TERDEKAT",
                        style: TextStyle(
                          color: Color(0xffF2F2F2),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.8,
                        ),
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.0158),

                  // hospital picture
                  SizedBox(
                    width: width,
                    height: height * 0.17,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, index) =>
                          SizedBox(width: width * 0.03),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (_, index) => Container(
                        width: width * 0.29,
                        height: height * 0.17,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color(0xffE8E8E8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: width * 0.25,
                                    height: height * 0.08,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.5),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/hospital.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                textAlign: TextAlign.center,
                                "RSUD. AHMAD\nJAYADI",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.5,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.star,
                                      color: Color(0xffF9B446), size: 23.0),
                                  Icon(Icons.star,
                                      color: Color(0xffF9B446), size: 23.0),
                                  Icon(Icons.star,
                                      color: Color(0xffF9B446), size: 23.0),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.0158),

                  // text => RUMAH SAKIT TERDEKAT
                  Container(
                    width: width * 0.6,
                    height: height * 0.04,
                    decoration: const BoxDecoration(
                        color: Color(0xff12D2C5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.8),
                            topRight: Radius.circular(12.8))),
                    child: const Center(
                      child: Text(
                        "RUMAH SAKIT TERDEKAT",
                        style: TextStyle(
                          color: Color(0xffF2F2F2),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.8,
                        ),
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.0158),

                  // doctors card
                  SizedBox(
                    width: width,
                    height: height * 0.38,
                    child: ListView.separated(
                      itemCount: doctorCardPicture.length,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, index) =>
                          SizedBox(height: height * 0.025),
                      itemBuilder: (_, index) => Container(
                        width: width,
                        height: height * 0.17,
                        decoration: BoxDecoration(
                          color: doctorCardColor[index],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: [
                            // doctors picture
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: width * 0.34,
                              height: height * 0.12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(doctorCardPicture[index]),
                                      fit: BoxFit.cover)),
                            ),

                            // text and starts icon
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "dr. Dwi Septa Rizqullah",
                                    style: TextStyle(
                                        color: Color(0xff414141),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5),
                                  ),
                                  const Text(
                                    "Specialist Penyakit Dalam",
                                    style: TextStyle(
                                        color: Color(0xff414141),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12.5),
                                  ),

                                  // five stars icons
                                  doctorCardStars[index],
                                ],
                              ),
                            ),

                            // chat icon
                            SvgPicture.asset(
                              "assets/images/chat-icon.svg",
                              height: 33,
                              width: 33,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // sized box
                  SizedBox(height: height * 0.017),

                  // register button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        color: const Color(0xffF9B446),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: const Center(
                        child: Text(
                          "VACCINE REGISTER",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
