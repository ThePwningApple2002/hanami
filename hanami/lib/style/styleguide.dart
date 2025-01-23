import 'package:flutter/material.dart';

class StyleGuide {
// Primary Colors
  static Color primaryColor1 = const Color(0xffFF8800);
  static Color primaryColor2 = const Color(0xffFFA034);
  static Color primaryColor3 = const Color(0xffF4BB79);
// Secondary Colors
  static Color secondaryColor1 = const Color(0xffFFF1E0);
  static Color secondaryColor2 = const Color(0xffFFF4E7);
  static Color secondaryColor3 = const Color(0xffFEF7EF);
// Black Colors
  static Color blackColor = const Color(0xff100E0A);
  static Color neutralColor1 = const Color(0xff8C8B89); //48%black
  static Color neutralColor2 = const Color(0xffE2E2E2); //12%black
  // White Colors
  static Color whiteColor = const Color(0xffFBF8F4);
  static Color neutralColor3 = const Color(0xffFDFCFA); //48%white
  static Color neutralColor4 = const Color(0xffFFFEFE); //12%white
  // State Colors
  static Color stateColorFor = const Color(0xffFFFFFF);
  static Color stateColorIn = const Color(0xffFFFF00);
  static Color stateColorDone = const Color(0xff00FF00);
  static Color stateColorToSend = const Color(0xff00FFFF);
  static Color stateColorSent = const Color(0xff00AAFF);
  static Color stateColorDelivered = const Color(0xffFF00FF);
  static Color stateColorReturned = const Color(0xffFF0000);
  static Color stateColorCancelled = const Color(0xff000000);

  static Color backgroundColor = whiteColor;
  static Color lineColor1 = neutralColor1;
  static Color lineColor2 = neutralColor2;
  static Color navLinkField = secondaryColor2;
  static Color navLinkFieldHover = secondaryColor1; // Press or Active
  static Color sidebarColor = secondaryColor3;
  static Color borderColorPrimary = primaryColor1;
  static Color borderColorNeutral = neutralColor2;
  static Color borderColorNeutralPress = neutralColor1;
  // Button Colors
  static Color buttonColor = primaryColor1;
  static Color buttonColorHover = blackColor;
  static Color button2Color = whiteColor;
  static Color button2BorderColor = primaryColor1;
  static Color button2Hover = primaryColor1; // Press or Active

  static Color orderInfoColor = secondaryColor1;
// Border Radius
  final int borderRadius1 = 12;
  final int borderRadius2 = 4;
//Typography
  final TextStyle heading1 = const TextStyle(fontSize: 28);
  final TextStyle navLinkText = const TextStyle(fontSize: 16);
  final TextStyle sideLinkText = const TextStyle(fontSize: 14);
}
