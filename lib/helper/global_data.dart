
import 'package:flutter/material.dart';

ColorScheme cs =
    Theme.of(GlobalData.navigatorKey.currentState!.context).colorScheme;
Size size = MediaQuery.of(GlobalData.navigatorKey.currentState!.context).size;

class GlobalData {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}
