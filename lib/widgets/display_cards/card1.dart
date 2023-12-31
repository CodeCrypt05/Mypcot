import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mypcot_app/utils/colors.dart';
import 'package:mypcot_app/utils/constants.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.blueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.pink,
                      margin: const EdgeInsets.all(14),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        ordersIllustration,
                        width: 140,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    // color: Colors.white,
                    child: Container(
                      width: 100,
                      height: 36,
                      margin: const EdgeInsets.only(bottom: 14),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: HexColor('#CC5E33'),
                        borderRadius: BorderRadius.circular(14),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text(
                        'Orders',
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
              // Card tag 2
              Container(
                // color: Colors.pinkAccent,
                alignment: Alignment.topRight,
                child: Stack(
                  children: [
                    Container(
                      // color: Colors.orange,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 124,
                                height: 88,
                                padding: const EdgeInsets.only(top: 12),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '02 ',
                                          style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                              color: AppColors.blueDeep,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Pending',
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
                                      'Orders from',
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
                      // color: const Color.fromARGB(115, 0, 0, 0),
                      padding: const EdgeInsets.only(bottom: 20),
                      margin: const EdgeInsets.only(right: 74),
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 44,
                            width: 78,
                            // color: Colors.amber,
                            margin: const EdgeInsets.only(left: 27),
                            child: Stack(
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.red,
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Image.asset(
                                    aaliaPic,
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
                                        color: Colors.red,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Image.asset(
                                      raviPic,
                                      fit: BoxFit.cover,
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
            ],
          ),
        ),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(left: 8, top: 8),
                  // color: Colors.white,
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 140,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: HexColor('#CC5E33'),
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
                                  text: 'You have ',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                TextSpan(
                                  text: '3',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: ' active',
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
                          Text(
                            'orders from',
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
                  ),
                ),
                //Card tag 1
                Container(
                  height: 100,
                  width: 200,
                  // color: const Color.fromARGB(115, 0, 0, 0),
                  margin: const EdgeInsets.only(top: 8),
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 56,
                        width: 106,
                        margin: const EdgeInsets.only(left: 26),
                        padding: const EdgeInsets.only(top: 12),
                        child: Stack(
                          children: [
                            Container(
                              width: 43,
                              height: 43,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.red,
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
                                    color: Colors
                                        .red, // Set the border color to red
                                    width: 3.0, // Set the border width
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
                                    color: Colors
                                        .red, // Set the border color to red
                                    width: 3.0, // Set the border width
                                  ),
                                ),
                                child: Image.asset(
                                  aishwaryaPic,
                                  fit: BoxFit.cover,
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
    );
  }
}
