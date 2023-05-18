import 'package:chitchat/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecentProfile extends StatelessWidget {
  final String firstName;
  final String imageUrl;

  const RecentProfile(
      {super.key, required this.firstName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 18.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 7.w,
            backgroundImage: const AssetImage(profilePicture),
          ),
          Text(
            firstName,
            style: TextStyle(
              fontSize: 15.sp,
              color: primaryColor,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
