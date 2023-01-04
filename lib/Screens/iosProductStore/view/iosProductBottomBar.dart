import 'package:flutter/cupertino.dart';
import 'package:outcaster/Screens/iosProductStore/provider/iosProductProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class iosProductBottomBar extends StatefulWidget {
  const iosProductBottomBar({Key? key}) : super(key: key);

  @override
  State<iosProductBottomBar> createState() => _iosProductBottomBarState();
}

class _iosProductBottomBarState extends State<iosProductBottomBar> {
  iosProductProvider? ProviderTrue;
  iosProductProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosProductProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosProductProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoTabScaffold(
        backgroundColor: CupertinoColors.white,
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Products"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
          ],
        ),
        // navigationBar: CupertinoNavigationBar(
        //   leading: Text(""),
        //   border: Border(),
        //   backgroundColor: CupertinoColors.white,
        // ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return ProviderTrue!.Screens[index];
            },
          );
        },
      ),
    );
  }
}
