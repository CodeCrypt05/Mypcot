import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypcot_app/utils/colors.dart';
import 'package:mypcot_app/utils/constants.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pinkAccent,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.yellow,
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
                            subscriptionsIllustration,
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
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(14),
                            shape: BoxShape.rectangle,
                          ),
                          child: Text(
                            'Subscriptions',
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
                  child: Expanded(
                    child: Stack(
                      children: [
                        Container(
                          // color: AppColors.blue,
                          margin: const EdgeInsets.only(right: 10),
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
                                    margin: const EdgeInsets.only(bottom: 8),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          'Supscriptions',
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
                                  Container(
                                    width: 124,
                                    height: 62,
                                    padding:
                                        const EdgeInsets.only(top: 6, left: 12),
                                    margin: const EdgeInsets.only(left: 18),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '199 ',
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
                                          'Deliveries',
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
                              //////////////////////////
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    // color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 140,
                      height: 84,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
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
                                    text: '03',
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' deliveries',
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
                  //Card tag 1
                  Container(
                    height: 100,
                    width: 200,
                    // color: const Color.fromARGB(115, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 44,
                          width: 106,
                          // color: Colors.amber,
                          margin: EdgeInsets.only(left: 20),
                          child: Stack(
                            children: [
                              Container(
                                width: 43,
                                height: 43,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.blue,
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
                                      color: AppColors.blue,
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
                                      color: AppColors.blue,
                                      width: 3.0,
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
      ),
    );
  }
}
