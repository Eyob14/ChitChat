import 'package:chitchat/models/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/constants.dart';

class MessageViewer extends StatelessWidget {
  final Message message;
  const MessageViewer({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: message.isMe ? messageSenderColor : messageReceiverColor,
          borderRadius: BorderRadius.circular(7.w),
        ),
        child: Text(message.text),
      ),
    );
  }
}
