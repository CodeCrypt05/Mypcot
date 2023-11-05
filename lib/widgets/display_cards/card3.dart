import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypcot_app/utils/colors.dart';
import 'package:mypcot_app/utils/constants.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pinkAccent,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.greenAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          // color: Colors.pink,
                          margin: const EdgeInsets.all(14),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            customersIllustration,
                            width: 140,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // color: Colors.white,
                        child: Container(
                          width: 120,
                          height: 36,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(bottom: 14),
                          decoration: BoxDecoration(
                            color: AppColors.pink,
                            borderRadius: BorderRadius.circular(14),
                            shape: BoxShape.rectangle,
                          ),
                          child: Text(
                            'View Cutomers',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Card tag 2
                Container(
                  // color: Colors.pinkAccent,
                  alignment: Alignment.topLeft,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        // color: AppColors.blue,
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 124,
                                  height: 62,
                                  padding:
                                      const EdgeInsets.only(top: 6, left: 12),
                                  margin: const EdgeInsets.only(
                                      bottom: 8, left: 32),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    shape: BoxShape.rectangle,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromARGB(
                                            179, 75, 75, 75), // Shadow color
                                        offset: Offset(0, 6), // Shadow offset
                                        blurRadius: 8, // Shadow blur radius
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '1.8% ',
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                color: AppColors.blueDeep,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          const Icon(
                                            Icons.arrow_upward,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 112,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(18)),
                                        ),
                                        child: SvgPicture.asset(
                                          graphIndicator,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 124,
                                  height: 62,
                                  padding:
                                      const EdgeInsets.only(top: 6, left: 12),
                                  margin: const EdgeInsets.only(right: 48),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    shape: BoxShape.rectangle,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromARGB(
                                            179, 75, 75, 75), // Shadow color
                                        offset: Offset(0, 6), // Shadow offset
                                        blurRadius: 8, // Shadow blur radius
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '10 ',
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                color: AppColors.blueDeep,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Active',
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                color: AppColors.blueLight,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Customers',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            color: AppColors.blueDeep,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        // color: const Color.fromARGB(162, 255, 193, 7),
                        margin: const EdgeInsets.only(bottom: 28, right: 14),
                        child: Stack(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 54, 244, 228),
                                  width: 2.0,
                                ),
                              ),
                              child: Image.asset(
                                sharukhanPic,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: 20,
                              child: Container(
                                width: 28,
                                height: 28,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 54, 244, 228),
                                    width: 2.0,
                                  ),
                                ),
                                child: Image.asset(
                                  salmanPic,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              child: Container(
                                width: 28,
                                height: 28,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 54, 244, 228),
                                    width: 2.0,
                                  ),
                                ),
                                child: Image.asset(
                                  aishwaryaPic,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 14,
                              top: 20,
                              child: Container(
                                width: 10,
                                height: 10,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 54, 244, 76),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 36,
                              top: 20,
                              child: Container(
                                width: 10,
                                height: 10,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 54, 244, 76),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 56,
                              top: 20,
                              child: Container(
                                width: 10,
                                height: 10,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 54, 244, 76),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Card 1////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    // color: Colors.white,
                    margin: const EdgeInsets.only(right: 50, top: 8),
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 140,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.pink,
                        borderRadius: BorderRadius.circular(18),
                        shape: BoxShape.rectangle,
                        boxShadow: const [
                          BoxShadow(
                            color:
                                Color.fromARGB(179, 75, 75, 75), // Shadow color
                            offset: Offset(0, 6), // Shadow offset
                            blurRadius: 8, // Shadow blur radius
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '15',
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' new cutomers',
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Card tag 1 profile pic//////////////////////////////////////////////////////////
                  Container(
                    height: 100,
                    width: 200,
                    // color: const Color.fromARGB(115, 0, 0, 0),
                    alignment: Alignment.topRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 44,
                          width: 118,
                          // color: Colors.amber,
                          margin: EdgeInsets.only(right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: 43,
                                height: 43,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 54, 244, 228),
                                    width: 3.0,
                                  ),
                                ),
                                child: Image.asset(
                                  sharukhanPic,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 30,
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 54, 244, 228),
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Image.asset(
                                    salmanPic,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 60,
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color.fromARGB(255, 54, 244, 228),
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Image.asset(
                                    aishwaryaPic,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                top: 16,
                                child: Container(
                                  width: 24,
                                  height: 23,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
