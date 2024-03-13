import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

String userID = Random().nextInt(1000000).toString();

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key, required this.callID});
  final String callID;
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1483334306,
      appSign:
          'aa5954b08e5426ea7232b4cf65ec150cdc48b707d2fc6319d8bc47dfa6e086a6',
      callID: callID,
      userID: userID,
      userName: "username$userID",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
