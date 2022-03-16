// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_navbar/src/presentation/themes/theme_defaults.dart';

final DialogTheme appMaterialLightDialogTheme = DialogTheme(
  backgroundColor: appMaterialLightBackgroundColor,
  elevation: 2,
  titleTextStyle: appMaterialLightDialogTitleTextStyle,
  contentTextStyle: appMaterialLightDialogContentTextStyle,
);

final DialogTheme appMaterialDarkDialogTheme = DialogTheme(
  backgroundColor: appMaterialDarkBackgroundColor,
  elevation: 2,
  titleTextStyle: appMaterialDarkDialogTitleTextStyle,
);

// label large
// ignore: prefer-correct-identifier-length
final TextStyle appMaterialLightDialogTitleTextStyle = TextStyle(
  color: appMaterialLightPrimaryColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  fontFamily: GoogleFonts.titilliumWeb().fontFamily,
  letterSpacing: 1.25,
);

// ignore: prefer-correct-identifier-length
final TextStyle appMaterialDarkDialogTitleTextStyle = TextStyle(
  color: appMaterialDarkPrimaryColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  fontFamily: GoogleFonts.titilliumWeb().fontFamily,
  letterSpacing: 1.25,
);

// ignore: prefer-correct-identifier-length
final TextStyle appMaterialLightDialogContentTextStyle = TextStyle(
  color: appMaterialLightPrimaryColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  fontFamily: GoogleFonts.montserratAlternates().fontFamily,
  letterSpacing: 1.25,
);

// ignore: prefer-correct-identifier-length
final TextStyle appMaterialDarkDialogContentTextStyle = TextStyle(
  color: appMaterialLightPrimaryColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  fontFamily: GoogleFonts.montserratAlternates().fontFamily,
  letterSpacing: 1.25,
);
