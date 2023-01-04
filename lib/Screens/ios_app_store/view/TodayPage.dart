import 'package:flutter/cupertino.dart';
import 'package:outcaster/Screens/ios_app_store/provider/iosAppStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  iosAppStoreProvider? ProviderTrue;
  iosAppStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosAppStoreProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosAppStoreProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w,top: 3.h),
              child: Text(
                "WEDNESDAY, SEPTEMBER 12",
                style: TextStyle(
                    color: CupertinoColors.systemGrey,
                    fontSize: 15.sp
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 5.w,right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today",style: TextStyle(color: CupertinoColors.black,fontSize: 30.sp,fontWeight: FontWeight.bold),),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                        color: CupertinoColors.black,
                        shape: BoxShape.circle
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.asset("assets/image/prf.jpg",fit: BoxFit.cover,)),
                  ),
                ],
              ),
            ),
            Container(
              height: 76.h,
              child: ListView.builder(
                itemCount: ProviderFalse!.Today.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 60.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: CupertinoColors.systemRed,
                        borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              color: CupertinoColors.systemGrey,
                              offset: Offset(0,0)
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(3.h),
                    child: ClipRRect(borderRadius: BorderRadius.circular(21),child: Image.asset("${ProviderTrue!.Today[index]}",fit: BoxFit.fill,)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
