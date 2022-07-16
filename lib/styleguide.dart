import 'package:flutter/cupertino.dart';

const TextStyle fadedTextStyle = TextStyle(
  color: Color(0x99ffffff),
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

const TextStyle whiteHeadingTextStyle = TextStyle(
  color: Color(0xffffffff),
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const TextStyle categoryTextStyle = TextStyle(
  color: Color(0x99ffffff),
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
  color: Color(0xffff4700),
);

const TextStyle eventTitleTextStyle = TextStyle(
  color: Color(0xffff4700),
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const TextStyle eventWhiteTitleTextStyle = TextStyle(
  color: Color(0xffffffff),
  fontSize: 38.0,
  fontWeight: FontWeight.bold,
);

const TextStyle eventLocationTextStyle = TextStyle(
  color: Color(0xff000000),
  fontSize: 16.0,
);

const TextStyle guestTextStyle = TextStyle(
  color: Color(0xff000000),
  fontSize: 20.0,
  fontWeight: FontWeight.w800,
);

const TextStyle punshLine1TextStyle = TextStyle(
  color: Color(0xffff4700),
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
);

TextStyle punshLine2TextStyle =
    punshLine1TextStyle.copyWith(color: Color(0xff000000));
