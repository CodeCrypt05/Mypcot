import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mypcot_app/screens/display_cards/card1.dart';
import 'package:mypcot_app/screens/display_cards/card2.dart';
import 'package:mypcot_app/screens/display_cards/card3.dart';
import 'package:mypcot_app/utils/colors.dart';
import 'package:mypcot_app/utils/constants.dart';
import 'package:mypcot_app/widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   leading: Container(
      //       decoration: BoxDecoration(
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black.withOpacity(0.3), // Shadow color
      //             blurRadius: 8.0, // Spread of the shadow
      //             offset: Offset(0, 4), // Offset from the top
      //           ),
      //         ],
      //       ),
      //       child: SvgPicture.asset(menuDrawer)),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: h! * 0.1,
              child: buildCustomAppBar(),
            ),
            Container(
              child: buildSearch(),
            ),
            Container(
              height: h! * 0.3,
              child: Card3(),
            ),
            Container(
              color: Colors.orange,
              height: h! * 0.1,
              child: buildCustomAppBar(),
            ),
            Container(
              color: Colors.amber,
              height: h! * 0.1,
              child: buildCustomAppBar(),
            ),
            Container(
              color: Colors.blue,
              height: h! * 0.2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AppColors.blueDeep,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }

  Widget buildCustomAppBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color
                        blurRadius: 28, // Spread of the shadow
                        offset: Offset(0, 2), // Offset from the top
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(menuDrawer,
                      width: 40, // Adjust the width as needed
                      height: 40),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color
                        blurRadius: 28, // Spread of the shadow
                        offset: Offset(0, 2), // Offset from the top
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(favourite,
                      width: 40, // Adjust the width as needed
                      height: 40),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color
                        blurRadius: 28, // Spread of the shadow
                        offset: Offset(0, 2), // Offset from the top
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(notification,
                      width: 36, // Adjust the width as needed
                      height: 36),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 28, // Spread of the shadow
                        offset: Offset(0, 6), // Offset from the top
                      ),
                    ],
                  ),
                  child: Image.asset('assets/icons/profile_ic.png',
                      width: 36, // Adjust the width as needed
                      height: 36),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome, Mypcot !!',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: AppColors.blueLight,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'here is your dashboard....',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: HexColor('#7A869A'),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 28, // Spread of the shadow
                        offset: Offset(0, 6), // Offset from the top
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(searchIC)),
            ],
          ),
        )
      ],
    );
  }
}
