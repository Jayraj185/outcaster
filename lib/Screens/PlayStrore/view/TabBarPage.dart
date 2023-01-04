import 'package:flutter/material.dart';
import 'package:outcaster/Screens/PlayStrore/provider/PlayStoreProvider.dart';
import 'package:outcaster/Screens/PlayStrore/view/ForYouPage.dart';
import 'package:outcaster/Screens/PlayStrore/view/gamespage.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  PlayStoreProvider? ProviderTrue;
  PlayStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<PlayStoreProvider>(context,listen: true);
    ProviderFalse = Provider.of<PlayStoreProvider>(context,listen: false);
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              height: 5.h,
              width: double.infinity,
              margin: EdgeInsets.only(left: 3.w,right: 3.w,top: 0.5.h),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2,
                    offset: Offset(0,1)
                  )
                ],
                borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.topCenter,
              child: ListTile(
                leading: Padding(
                  padding:  EdgeInsets.only(bottom: 1.5.h,left: 3.w),
                  child: Icon(Icons.menu,color: Colors.black,),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(bottom: 1.5.h,left: 3.w),
                  child: Icon(Icons.mic,color: Colors.black,),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 1.5.h,left: 3.w),
                  child: TextField(
                    cursorColor: Colors.green.shade700,
                    cursorHeight: 2.6.h,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for apps & games",
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.green.shade700,
              labelColor: Colors.green.shade700,
              unselectedLabelColor: Colors.grey.shade600,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: "For You",),
                Tab(text: "Top charts",),
                Tab(text: "Children",),
                Tab(text: "Events",),
                Tab(text: "Premium",),
                Tab(text: "Categories",),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: ProviderTrue!.bottomlist[ProviderTrue!.index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: ProviderTrue!.index,
            onTap: (index){
              ProviderFalse!.changeindex(index);
            },
            selectedItemColor: Colors.green.shade700,
            unselectedItemColor: Colors.black38,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.gamepad_outlined),label: "Games"),
              BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined),label: "Apps"),
              BottomNavigationBarItem(icon: Icon(Icons.movie_outlined),label: "Movies & TV"),
              BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "Books"),
            ],
          ),
        ),
      ),
    );
  }
}
