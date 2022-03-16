// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: prefer_initializing_formals, unnecessary_this

import 'package:flutter/material.dart';

class AppThemeColorFields {
  final Color? appPrimaryOne;
  // ignore: member-ordering-extended
  final Color? appOnPrimaryOne;
  final Color? appPrimaryContainerOne;
  // ignore: member-ordering-extended
  final Color? appOnPrimaryContainerOne;
  final Color? appPrimaryTwo;
  // ignore: member-ordering-extended
  final Color? appOnPrimaryTwo;
  final Color? appPrimaryContainerTwo;
  // ignore: member-ordering-extended
  final Color? appOnPrimaryContainerTwo;
  final Color? appPrimaryThree;
  // ignore: member-ordering-extended
  final Color? appOnPrimaryThree;
  final Color? appPrimaryContainerThree;
  // ignore: member-ordering-extended
  final Color? appOnPrimaryContainerThree;

  const AppThemeColorFields({
    Color? appPrimaryOne,
    Color? appOnPrimaryOne,
    Color? appPrimaryContainerOne,
    Color? appOnPrimaryContainerOne,
    Color? appPrimaryTwo,
    Color? appOnPrimaryTwo,
    Color? appPrimaryContainerTwo,
    Color? appOnPrimaryContainerTwo,
    Color? appPrimaryThree,
    Color? appOnPrimaryThree,
    Color? appPrimaryContainerThree,
    Color? appOnPrimaryContainerThree,
  })  : this.appPrimaryOne = appPrimaryOne,
        this.appOnPrimaryOne = appOnPrimaryOne,
        this.appPrimaryContainerOne = appPrimaryContainerOne,
        this.appOnPrimaryContainerOne = appOnPrimaryContainerOne,
        this.appPrimaryTwo = appPrimaryTwo,
        this.appOnPrimaryTwo = appOnPrimaryTwo,
        this.appPrimaryContainerTwo = appPrimaryContainerTwo,
        this.appOnPrimaryContainerTwo = appOnPrimaryContainerTwo,
        this.appPrimaryThree = appPrimaryThree,
        this.appOnPrimaryThree = appOnPrimaryThree,
        this.appPrimaryContainerThree = appPrimaryContainerThree,
        this.appOnPrimaryContainerThree = appOnPrimaryContainerThree;

  factory AppThemeColorFields.empty() {
    return const AppThemeColorFields();
  }
}

extension AppColorThemeExt on ThemeData {
  static final Map<ColorScheme, AppThemeColorFields> _own = {};

  void addThemeDataColorFields(AppThemeColorFields own) {
    // Theme.of() and thus platformThemeData builder ref wil be anew instance so I need to
    // use internal fields which are no deep copied but simply a reference is copied. That
    // also means that when I do use the Theme.of() refs that new instance will thus have my added fields.
    //
    // A whole betern than implementing the ThemeData or other interfaces and thus directly
    // coupling to any SDK changes ocurring per each SDK update.
    _own[this.colorScheme] = own;
  }

  // ignore: avoid_init_to_null
  static AppThemeColorFields? empty = null;

  AppThemeColorFields? own() {
    // ignore: prefer-correct-identifier-length
    final o = _own[this.navigationRailTheme];
    if (o == null) {
      empty ??= AppThemeColorFields.empty();
    }

    return o;
  }
}
