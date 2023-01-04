import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/Screens/iosSetting/provider/iosProvider.dart';
import 'package:outcaster/Screens/ios_app_store/provider/iosAppStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class iosAppStorePage extends StatefulWidget {
  const iosAppStorePage({Key? key}) : super(key: key);

  @override
  State<iosAppStorePage> createState() => _iosAppStorePageState();
}

class _iosAppStorePageState extends State<iosAppStorePage> {
  iosAppStoreProvider? ProviderTrue;
  iosAppStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosAppStoreProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosAppStoreProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.today),label: "Today"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill),label: "Games"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square),label: "Apps"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_arrow_down_fill),label: "Updates"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
          ],
        ),
        tabBuilder: (context, index) {
          return ProviderTrue!.bottamlist[index];
        },
      ),
    );
  }
}
