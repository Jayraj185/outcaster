import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outcaster/Screens/Allapps/All_AppsForAndroid.dart';
import 'package:outcaster/Screens/Allapps/All_AppsForios.dart';
import 'package:outcaster/Screens/AndroidSetting/provider/AndroidSettingProvider.dart';
import 'package:outcaster/Screens/AndroidSetting/view/AndroidSettingPage.dart';
import 'package:outcaster/Screens/AndroidStepper/provider/StepperProvider.dart';
import 'package:outcaster/Screens/AndroidStepper/view/SplashPage.dart';
import 'package:outcaster/Screens/AndroidStepper/view/StepperPage.dart';
import 'package:outcaster/Screens/PlayStrore/provider/PlayStoreProvider.dart';
import 'package:outcaster/Screens/PlayStrore/view/TabBarPage.dart';
import 'package:outcaster/Screens/PlayStrore/view/appiconviewpage.dart';
import 'package:outcaster/Screens/PlayStrore/view/appviewpage.dart';
import 'package:outcaster/Screens/iosProductStore/provider/iosProductProvider.dart';
import 'package:outcaster/Screens/iosProductStore/view/iosProductBottomBar.dart';
import 'package:outcaster/Screens/iosSetting/provider/iosProvider.dart';
import 'package:outcaster/Screens/iosSetting/view/iOSSetting.dart';
import 'package:outcaster/Screens/ios_app_store/provider/iosAppStoreProvider.dart';
import 'package:outcaster/Screens/ios_app_store/view/iosAppStorePage.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  var systmetheme = SystemUiOverlayStyle.light.copyWith(statusBarColor: CupertinoColors.white);
  SystemChrome.setSystemUIOverlayStyle(systmetheme);
  runApp(
    Platform.isAndroid?Android():ios(),
  );
}
Widget ios()
{
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => iosAppStoreProvider(),),
      ChangeNotifierProvider(create: (context) => iosProvider(),),
      ChangeNotifierProvider(create: (context) => iosProductProvider(),),
    ],
    child: Sizer(
      builder: (context, orientation, deviceType) {
        return CupertinoApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/' : (context) => All_Apps_For_ios(),
            'iossetting' : (context) => iOSSetting(),
            'iosAppStorePage' : (context) => iosAppStorePage(),
            'ProductStore' : (context) => iosProductBottomBar(),
          },
        );
      },
    ),
  );
}
Widget Android()
{
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AndroidProvider(),),
      ChangeNotifierProvider(create: (context) => PlayStoreProvider(),),
      ChangeNotifierProvider(create: (context) => StepperProvider(),),
    ],
    child: Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/' : (context) => AllApps(),
            'androidsetting' : (context) => AndroidSettingPage(),
            'PlayStrore' : (context) => TabBarPage(),
            'AppView' : (context) => AppViewPage(),
            'AppIconView' : (context) => AppIconViewPage(),
            'Splash' : (context) => SplashPage(),
            'AndroidStepper' : (context) => AndroidStepper(),
          },
        );
      },
    ),
  );
}