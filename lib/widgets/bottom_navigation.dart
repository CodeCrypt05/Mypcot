import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_app/utils/text_style.dart';
import 'package:provider/provider.dart';

import 'package:mypcot_app/provider/change_tab.dart';
import 'package:mypcot_app/utils/constants.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Consumer<ChnageTab>(
          builder: (BuildContext context, ChnageTab value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        value.setInt(0);
                      },
                      minWidth: 40,
                      splashColor: Colors.transparent,
                      shape: const CircleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          value.index == 0
                              ? Column(
                                  children: [
                                    SvgPicture.asset(homeClickedIC),
                                    Text(
                                      'Home',
                                      style: TextStyles.roboto("deepBlue"),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(homeIC),
                                    Text(
                                      'Home',
                                      style: TextStyles.roboto("lightBlue"),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        value.setInt(1);
                      },
                      minWidth: 40,
                      splashColor: Colors.transparent,
                      shape: const CircleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          value.index == 1
                              ? Column(
                                  children: [
                                    SvgPicture.asset(customerClickedIC),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Customer',
                                      style: TextStyles.roboto("deepBlue"),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(customerIC),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Customer',
                                      style: TextStyles.roboto("lightBlue"),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ],
                ),
                // Right tab bar icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        value.setInt(2);
                      },
                      minWidth: 40,
                      splashColor: Colors.transparent,
                      shape: const CircleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          value.index == 2
                              ? Column(
                                  children: [
                                    SvgPicture.asset(khataClickedIC),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Khata',
                                      style: TextStyles.roboto("deepBlue"),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(khataIC),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Khata',
                                      style: TextStyles.roboto("lightBlue"),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        value.setInt(3);
                      },
                      minWidth: 40,
                      splashColor: Colors.transparent,
                      shape: const CircleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          value.index == 3
                              ? Column(
                                  children: [
                                    SvgPicture.asset(ordersClickedIC),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Orders',
                                      style: TextStyles.roboto("deepBlue"),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    SvgPicture.asset(ordersIC),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Orders',
                                      style: TextStyles.roboto("lightBlue"),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
