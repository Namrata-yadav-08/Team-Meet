import 'package:flutter/material.dart';
import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';

class MessagesScreen extends StatefulWidget {
  final User? user;
  final Group? group;

  const MessagesScreen({Key? key, this.user, this.group}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
     final bgColor = Theme.of(context)
        .extension<CometChatColorPalette>()
        ?.background1 ?? Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
       backgroundColor:bgColor,
      appBar: CometChatMessageHeader(
        user: widget.user,
        group: widget.group,
      ),
      body: SafeArea(
        child: Container(
          color: bgColor,
          child: Column(
            children: [
              Expanded(
                child: CometChatMessageList(
                  user: widget.user,
                  group: widget.group,
                ),
              ),
              CometChatMessageComposer(
                user: widget.user,
                group: widget.group,
                messageComposerStyle: CometChatMessageComposerStyle(
                sendButtonIconBackgroundColor: Color.fromARGB(255, 227, 82, 15),
                secondaryButtonIconColor: Color.fromARGB(255, 227, 82, 15),
                auxiliaryButtonIconColor: Color.fromARGB(255, 227, 82, 15),
          
              
               mediaRecorderStyle: CometChatMediaRecorderStyle(
              recordIndicatorBackgroundColor:  Color.fromARGB(255, 227, 82, 15),
            ),
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}