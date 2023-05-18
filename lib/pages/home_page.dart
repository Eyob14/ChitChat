import 'package:chitchat/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../dummy/dummy_data.dart';
import '../widgets/message_profile.dart';
import '../widgets/recent_profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: GoogleFonts.poppins(
            fontSize: 22.sp,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: Icon(
              Icons.search_rounded,
              size: 22.sp,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 2.h),
              child: Text(
                "RECENT",
                style: TextStyle(
                  fontSize: 13.5.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade400,
                  letterSpacing: 3,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 2.w,
                bottom: 2.h,
              ),
              height: 12.h,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, chatPage);
                  },
                  child: RecentProfile(
                    firstName: profileDummyData[index].firstName,
                    imageUrl: profileDummyData[index].photoURL,
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 1.w,
                ),
                itemCount: profileDummyData.length,
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
              ),
            ),
            Container(
              width: 100.w,
              padding: EdgeInsets.only(
                left: 4.w,
                right: 4.w,
                top: 5.h,
                bottom: 2.h,
              ),
              decoration: BoxDecoration(
                color: secondaryBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7.w),
                  topLeft: Radius.circular(7.w),
                ),
              ),
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, chatPage,
                        arguments:
                            profileDummyData[index % profileDummyData.length]);
                  },
                  child: MessageProfile(
                    profile: profileDummyData[index % profileDummyData.length],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 3.h,
                ),
                itemCount: profileDummyData.length * 3,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
