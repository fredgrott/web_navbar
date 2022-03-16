// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:url_router/url_router.dart';
import 'package:web_navbar/src/domain/modals/master_destinations.dart';
import 'package:web_navbar/src/domain/modals/web_destinations.dart';
import 'package:web_navbar/src/presentation/widgets/shared_web_bar.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    void handleTabPressed(String value) => context.url = value;

    final List<ElevatedButton> webNavButtons = [
      ElevatedButton.icon(
        onPressed: () => handleTabPressed(masterDestinations.first.url),
        icon: masterDestinations.first.icon,
        label: Text(
          masterDestinations.first.titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),

      ElevatedButton.icon(
        onPressed: () => handleTabPressed(masterDestinations[1].url),
        icon: masterDestinations[1].icon,
        label: Text(
          masterDestinations[1].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () => handleTabPressed(masterDestinations[2].url),
        icon: masterDestinations[2].icon,
        label: Text(
          masterDestinations[2].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () => handleTabPressed(masterDestinations[3].url),
        icon: masterDestinations[3].icon,
        label: Text(
          masterDestinations[3].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: () => handleTabPressed(masterDestinations[4].url),
        icon: masterDestinations[4].icon,
        label: Text(
          masterDestinations[4].titleLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    ];

      


      




    return Scaffold(
      appBar: SharedWebBar(
        webNavButtons: webNavButtons,
        pathToLogo: 'assets/images/32.png',
        websiteTitle: Text(
          "Fred Grott",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        hamburgerColor: Theme.of(context).colorScheme.primary,
        webBarColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        color: Colors.amberAccent,
      ),
    );
  }
}
