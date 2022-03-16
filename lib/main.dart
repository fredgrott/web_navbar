import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web_navbar/src/my_app.dart';



Future<void> main() async {
  // the non cross-platform way to set this for the web platform using the
  // flutter web plugins library, see:
  // https://docs.flutter.dev/development/ui/navigation/url-strategies
  // the result is that we have the path url instead of the hash url
  setUrlStrategy(PathUrlStrategy());

  
  runApp(MyApp());
}
