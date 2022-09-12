import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:realtor_connect/theme/app_state.dart';
import 'package:realtor_connect/theme/app_theme.dart';
import 'package:realtor_connect/theme/colors.dart';
import 'package:realtor_connect/views/splash/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/global_data.dart';
import 'helper/shared_preferences_helper.dart';

bool? themeMode = false;
Logger logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PreferencesHelper.preferences = await SharedPreferences.getInstance();
  checkTheme();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppState(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

checkTheme() {
  if (PreferencesHelper.preferences.containsKey("themeMode")) {
    themeMode = PreferencesHelper.preferences.getBool("themeMode");
    if (themeMode!) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.black,
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light));
    } else {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark));
    }
  } else {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarColor: MyColors.darkBlue,
        systemNavigationBarIconBrightness: Brightness.dark));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return MaterialApp(
          navigatorKey: GlobalData.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Realtor Connect',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn! ? ThemeMode.dark : ThemeMode.light,
          color: Colors.blue,
          home: const SplashScreen(),
        );
      },
    );
  }
}

