import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:mypcot_app/widgets/calendar.dart';
import 'package:mypcot_app/widgets/display_cards/card1.dart';
import 'package:mypcot_app/widgets/display_cards/card2.dart';
import 'package:mypcot_app/widgets/display_cards/card3.dart';
import 'package:mypcot_app/utils/colors.dart';
import 'package:mypcot_app/utils/constants.dart';
import 'package:mypcot_app/widgets/bottom_navigation.dart';
import 'package:mypcot_app/widgets/order_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> cardWidgets = [const Card1(), const Card2(), const Card3()];

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildCustomAppBar(),
              const SizedBox(
                height: 28,
              ),
              buildSearch(),
              const SizedBox(
                height: 18,
              ),
              buildCards(),
              const SizedBox(
                height: 8,
              ),
              buildTimeLine(),
              const SizedBox(
                height: 22,
              ),
              Container(
                height: 60,
                width: 380,
                alignment: Alignment.center,
                child: const Calendar(),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const OrderCard(),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
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

///////////////////////////// Custom App Bar ///////////////////////////////////////
  Widget buildCustomAppBar() {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 12),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: SvgPicture.asset(menuDrawer, width: 40, height: 40),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: SvgPicture.asset(favourite, width: 40, height: 40),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: SvgPicture.asset(notification, width: 36, height: 36),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Image.asset('assets/icons/profile_ic.png',
                    width: 36, height: 36),
              ),
            ],
          ),
        )
      ],
    );
  }

/////////////////////// Search Container ///////////////////////////////////
  Widget buildSearch() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome, Mypcot !!',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 22,
                        color: AppColors.blueLight,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    'here is your dashboard....',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 16,
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
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: SvgPicture.asset(searchIC),
              ),
            ],
          ),
        )
      ],
    );
  }

////////////////////// Main Cards //////////////////////////////////
  Widget buildCards() {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardWidgets.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return cardWidgets[index];
        },
      ),
    );
  }
////////////////////// TimeLine //////////////////////////////////

  Widget buildTimeLine() {
    DateTime now = DateTime.now();
    String formattedDate1 = DateFormat.yMMMMd().format(now);
    final DateFormat formatter = DateFormat('MMM, yyyy');
    String formattedDate2 = formatter.format(now);
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formattedDate1,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: HexColor('#5F7096'),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                'Today',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: HexColor('#2C3D63'),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          if (w! > 360)
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'TIMELINE',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: HexColor('#2C3D63'),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Icon(
                        Icons.arrow_drop_down,
                        color: HexColor('#2C3D63'),
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(calendarIc),
                      const SizedBox(width: 6),
                      Text(
                        formattedDate2,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: HexColor('#2C3D63'),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          if (w! <= 360)
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'TIMELINE',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: HexColor('#2C3D63'),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Icon(
                        Icons.arrow_drop_down,
                        color: HexColor('#2C3D63'),
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(calendarIc),
                      const SizedBox(width: 6),
                      Text(
                        formattedDate2,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: HexColor('#2C3D63'),
                            fontWeight: FontWeight.w600,
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
    );
  }
}
