import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mypcot_app/utils/constants.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 34,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 18, bottom: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Order Created',
                  style: GoogleFonts.roboto(
                    color: HexColor('#5F7096'),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'New Order created with Order',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  '09:00 AM',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: HexColor('#FF7742'),
                  ),
                ),
                SvgPicture.asset(
                  arrowIC,
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            orderIC,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
