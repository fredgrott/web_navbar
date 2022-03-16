// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_router/url_router.dart';
import 'package:web_navbar/src/localization_gen/l10n.dart';
import 'package:web_navbar/src/presentation/features/books/books_page.dart';
import 'package:web_navbar/src/presentation/features/contact/contact_page.dart';
import 'package:web_navbar/src/presentation/features/home/home_page.dart';
import 'package:web_navbar/src/presentation/features/projects/projects_page.dart';
import 'package:web_navbar/src/presentation/features/services/services_page.dart';
import 'package:web_navbar/src/presentation/themes/theme_data.dart';

// Gist: This is the shell class of the app where the root widget can be found that usually
//       sets up the root navigator, mediaquery stuff, etc.

class MyApp extends StatelessWidget {
  final UrlRouter _router = UrlRouter(
    url: '/',

    // ignore: prefer-extracting-callbacks
    onGeneratePages: (router) {
      if (router.url == "/books") {
        return [MaterialPage<dynamic>(child: BooksPage())];
      }

      if (router.url == "/projects") {
        return [MaterialPage<dynamic>(child: ProjectsPage())];
      }

      if (router.url == "/contact") {
        return [MaterialPage<dynamic>(child: ContactPage())];
      }
      if (router.url == "/services") {
        return [MaterialPage<dynamic>(child: ServicesPage())];
      }

      return [MaterialPage<dynamic>(child: HomePage())];
    },

    //onGeneratePages: (router) => [
    //MaterialPage<dynamic>(child: HomePage()),
    // handle other pages

    //],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // turn off debug banner
      debugShowCheckedModeBanner: false,
      // fix web scrolling
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),

      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      theme: appMaterialLightThemeData,
      themeMode: ThemeMode.dark,
      darkTheme: appMaterialDarkThemeData,

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale(
          'en',
          '',
        ), // English, no country code
      ],

      routeInformationParser: UrlRouteParser(),
      routerDelegate: _router,
    );
  }
}
