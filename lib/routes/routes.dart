import 'package:flutter/material.dart';
import 'package:qr_reader_custom/pages/content_page.dart';
import 'package:qr_reader_custom/pages/home_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    'home' : (BuildContext context) => HomePage(),
    'content': (BuildContext context) => ContentPage()
  };
}