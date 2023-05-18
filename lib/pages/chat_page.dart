import 'package:chitchat/models/profile.dart';
import 'package:chitchat/utils/constants.dart';
import 'package:chitchat/widgets/dismiss_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = ModalRoute.of(context)!.settings.arguments as Profile;
    return DismissKeyboard(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${profile.firstName} ${profile.lastName}',
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
        body: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: secondaryBackgroundColor,
                  borderRadius: BorderRadius.circular(5.w),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w200,
                    color: primaryColor,
                  ),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: InputBorder.none,
                    prefixIconColor: Colors.black,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 1.h,
                    ),
                    hintText: 'Message',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w300,
                      color: messageReceiverColor,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w),
                      child: CircleAvatar(
                        backgroundColor: messageSenderColor,
                        child: Icon(
                          size: 5.w,
                          Icons.camera_alt_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    suffixIcon: Icon(
                      size: 5.w,
                      Icons.send_rounded,
                      color: messageSenderColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
