// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// gist:  FontWeigts is limited to FontWeight class in dart ui of:
//        https://api.flutter.dev/flutter/dart-ui/FontWeight-class.html
//            w100 Thin/hairline
//            w200 ExtraLight
//            w300 Light
//            w400 Regular
//            w500 Medium
//            w600 SemiBold
//            w700 Bold
//            w800 Extra Bold
//            w900 Black
//
//         But, in fonts we have one extra variation called Extra Black, see:
//         https://en.wikipedia.org/wiki/Font
//
//         Color branding and shadows added with functionName.copywith()
//         at the text span level.

import 'package:flutter/material.dart';

const TextStyle appLightBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w300,
);

const TextStyle appExtraLightBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w200,
);

const TextStyle appThinBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w100,
);

const TextStyle appRegularBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
);

const TextStyle appLightItalicBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.italic,
);

// ignore: prefer-correct-identifier-length
const TextStyle appExtraLightItalicBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w200,
  fontStyle: FontStyle.italic,
);

const appThinItalicBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w100,
  fontStyle: FontStyle.italic,
);

const appRegularItalicBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.italic,
);
