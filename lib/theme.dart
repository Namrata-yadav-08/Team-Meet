
import 'package:flutter/material.dart';
import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xFFE3520F),
      unselectedItemColor: Colors.grey,
    ),
    extensions: [CometChatMessageReceiptStyle(
            readIconColor:  Color.fromARGB(255, 60, 0, 255),
          ),
      CometChatMessageListStyle(
            backgroundColor:Color(0xFFFFFFFF),
            outgoingMessageBubbleStyle: CometChatOutgoingMessageBubbleStyle(
              backgroundColor:Color(0xFFE3520F)
            )
        ),
      CometChatColorPalette(
        primary: Color(0xFFE3520F),
        extendedPrimary500: Color(0xFFE3520F),
        iconHighlight: Color(0xFFE3520F),

        textPrimary: Color(0xFF141414),
        textSecondary: Color(0xFF727272),
        background1: Color(0xFFFFFFFF),
        borderLight: Color(0xFFF5F5F5),
        borderDark: Color(0xFFDCDCDC),
        iconSecondary: Color(0xFFA1A1A1),
        success: Color(0xFF09C26F),
        warning: Color(0xFFFAAB00),
        messageSeen: Color(0xFF56E8A7),
        neutral900: Color(0xFF141414),
        neutral600: Color(0xFF727272),
        neutral300: Color(0xFFE8E8E8),
      )
    ],
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF1A1A1A),
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1A1A1A),
      selectedItemColor: Color(0xFFE3520F),
      unselectedItemColor: Colors.grey,
    ),
    extensions: [CometChatMessageReceiptStyle(
            readIconColor:  Color.fromARGB(255, 60, 0, 255),
          ),
      CometChatMessageListStyle(
            backgroundColor: Color(0xFF1A1A1A),
            outgoingMessageBubbleStyle: CometChatOutgoingMessageBubbleStyle(
              backgroundColor: Color(0xFFE3520F)
            )
        ),
      CometChatColorPalette(
        primary: Color(0xFFE3520F),
        extendedPrimary500: Color(0xFFE3520F),
        iconHighlight: Color(0xFFE3520F),

        textPrimary: Color(0xFFFFFFFF),
        textSecondary: Color(0xFF989898),
        background1: Color(0xFF1A1A1A),
        borderLight: Color(0xFF272727),
        iconSecondary: Color(0xFF858585),
        success: Color(0xFF0B9F5D),
        warning: Color(0xFFD08D04),
        messageSeen: Color(0xFF56E8A7),
        neutral900: Color(0xFFFFFFFF),
        neutral600: Color(0xFF989898),
        neutral300: Color(0xFF383838),
      )
    ],
  );
}


