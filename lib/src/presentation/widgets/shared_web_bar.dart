// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_bool_literals_in_conditional_expressions


import 'package:flutter/material.dart';

const kDesktopBreakpoint = 1024.0;
late bool fullScreen;

class SharedWebBar extends StatelessWidget with PreferredSizeWidget {
  final Color hamburgerColor;
  final String pathToLogo;
  final Color webBarColor;
  final List<ElevatedButton> webNavButtons;
  
  final Text websiteTitle;
  
  
  const SharedWebBar({
    Key? key,
    required this.webNavButtons,
    required this.pathToLogo,
    required this.websiteTitle,
    required this.hamburgerColor,
    required this.webBarColor,
  }) : super(key: key);


  



  @override
  Widget build(BuildContext context) {
    fullScreen =
        MediaQuery.of(context).size.width >= kDesktopBreakpoint ? true : false;

    // full screen
    return fullScreen
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            color: webBarColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(pathToLogo),
                websiteTitle,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: webNavButtons,
                ),
              ],
            ),
          )
        : Container(
            // mobile
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            color: webBarColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // drawer via a Dialog
                Container(
                  height: 50.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: hamburgerColor,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: IconButton(
                      splashColor: hamburgerColor,
                      onPressed: () {
                        showDialog<dynamic>(
                          context: context, 
                          builder: (context) => SimpleDialog(
                            title: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.clear_all_rounded,
                                size: 32,
                                color: hamburgerColor,
                                ),

                            ),
                            backgroundColor: webBarColor,
                            children: [
                              Container(
                                color: webBarColor,
                                height: 350,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: webNavButtons,

                                ),


                              ),
                            ],

                          ),
                          

                        );
                      },
                      icon: Icon(
                        Icons.menu,
                        size: 32,
                        color: hamburgerColor,
                        ),
                    ),
                  ),
                ),

                Image.asset(pathToLogo),
                websiteTitle,
              ],
            ),
          );
  }

  @override
  Size get preferredSize => const Size(
        double.infinity,
        80,
      );
}
