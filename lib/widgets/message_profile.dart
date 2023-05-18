import 'package:chitchat/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../models/profile.dart';

class MessageProfile extends StatelessWidget {
  final Profile profile;
  const MessageProfile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 5.w,
              backgroundImage: AssetImage(profile.photoURL),
            ),
            SizedBox(
              width: 3.5.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${profile.firstName} ${profile.lastName}',
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 0.4.h,
                ),
                Text(
                  profile.email,
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontSize: 13.4.sp,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          "18:02",
          style: GoogleFonts.poppins(
            color: primaryColor,
            fontSize: 13.4.sp,
            fontWeight: FontWeight.w100,
          ),
        )
      ],
    );
  }
}
