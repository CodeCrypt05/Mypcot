import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_app/utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        leading: MaterialButton(
          onPressed: () {},
          child: SvgPicture.asset(
            menuDrawer,
            height: 28,
            width: 28,
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: SvgPicture.asset(favourite),
          ),
          MaterialButton(
            onPressed: () {},
            child: SvgPicture.asset(notification),
          ),
          MaterialButton(
            onPressed: () {},
            child: SvgPicture.asset(profile),
          ),
        ],
      ),
    );
  }
}
