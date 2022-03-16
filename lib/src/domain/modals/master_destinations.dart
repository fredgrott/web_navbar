// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:web_navbar/src/domain/modals/web_destinations.dart';

final List<WebDestinations> masterDestinations = [
  WebDestinations(
    icon: const Icon(Icons.home),
    titleLabel: "Home",
    url: "/",
  ),
  WebDestinations(
    icon: const Icon(Icons.book),
    titleLabel: "Books",
    url: "/books",
  ),
  WebDestinations(
    icon: const Icon(Icons.build),
    titleLabel: "Projects",
    url: "/projects",
  ),
  WebDestinations(
    icon: const Icon(Icons.contact_page),
    titleLabel: "Contact",
    url: "/contact",
  ),
  WebDestinations(
    icon: const Icon(Icons.supervised_user_circle_outlined), 
    titleLabel: 'Services', 
    url: '/services',),
];
