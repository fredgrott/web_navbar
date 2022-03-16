// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';



const int appSeedLight = 0xffdd7e51;

const int appSeedDark = 0xffddcfcf;

const int brandColorOne = appSeedLight;
const int brandColorTwo = appSeedDark;
const int brandColorThree = 0xfff77f7f;

final ColorScheme appMaterialLightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(appSeedLight),
  // ignore: avoid_redundant_argument_values
  brightness: Brightness.light,
);

final ColorScheme appMaterialDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(appSeedDark),
  brightness: Brightness.dark,
);

final CorePalette corePaletteOne = CorePalette.of(brandColorOne);
final CorePalette corePaletteTwo = CorePalette.of(brandColorTwo);
final CorePalette corePaletteThree = CorePalette.of(brandColorThree);

// light
final int primaryLightOne = corePaletteOne.primary.get(40);
final int onPrimaryLightOne = corePaletteOne.primary.get(100);
final int primaryContainerLightOne = corePaletteOne.primary.get(90);
final int onPrimaryContainerLightOne = corePaletteOne.primary.get(10);
final int primaryLightTwo = corePaletteTwo.primary.get(40);
final int onPrimaryLightTwo = corePaletteTwo.primary.get(100);
final int primaryContainerLightTwo = corePaletteTwo.primary.get(90);
final int onPrimaryContainerLightTwo = corePaletteTwo.primary.get(10);
final int primaryLightThree = corePaletteThree.primary.get(40);
final int onPrimaryLightThree = corePaletteThree.primary.get(100);
final int primaryContainerLightThree = corePaletteThree.primary.get(90);
final int onPrimaryContainerLightThree = corePaletteThree.primary.get(10);

// dark
final int primaryDarkOne = corePaletteOne.primary.get(80);
final int onPrimaryDarkOne = corePaletteOne.primary.get(20);
final int primaryContainerDarkOne = corePaletteOne.primary.get(30);
final int onPrimaryContainerDarkOne = corePaletteOne.primary.get(90);
final int primaryDarkTwo = corePaletteTwo.primary.get(80);
final int onPrimaryDarkTwo = corePaletteTwo.primary.get(20);
final int primaryContainerDarkTwo = corePaletteTwo.primary.get(30);
final int onPrimaryContainerDarkTwo = corePaletteTwo.primary.get(90);
final int primaryDarkThree = corePaletteThree.primary.get(80);
final int onPrimaryDarkThree = corePaletteThree.primary.get(20);
final int primaryContainerDarkThree = corePaletteThree.primary.get(30);
final int onPrimaryContainerDarkThree = corePaletteThree.primary.get(90);
