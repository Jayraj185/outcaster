import 'package:flutter/material.dart';
import 'package:outcaster/Screens/PlayStrore/provider/PlayStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  PlayStoreProvider? ProviderTrue;
  PlayStoreProvider? ProviderFalse;

  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<PlayStoreProvider>(context, listen: true);
    ProviderFalse = Provider.of<PlayStoreProvider>(context, listen: false);
    return ListView(
      children: [
        ListTile(
          title: Text(
            "Back this app",
            style: TextStyle(color: Colors.black, fontSize: 15.sp),
          ),
          trailing: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context,'/');
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        ListTile(
          title: Text(
            "Recommended for you",
            style: TextStyle(color: Colors.black, fontSize: 15.sp),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
        ),
        Container(
          height: 21.h,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  ProviderFalse!.Data(ProviderTrue!.apps1[index]);
                  Navigator.pushNamed(context, 'AppView');
                  print("tap $index");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 12.h,
                      width: 26.5.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 3,
                                offset: Offset(0,0)
                            )
                          ]
                      ),
                      margin: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: ClipRRect(borderRadius: BorderRadius.circular(21),child: Image.asset("${ProviderTrue!.apps1[index].image}"),),
                    ),
                    Container(
                      width: 24.w,
                      height: 5.h,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${ProviderTrue!.apps1[index].name}\n${ProviderTrue!.apps1[index].rating} ⭐",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        ListTile(
          title: Text(
            "New & updated apps",
            style: TextStyle(color: Colors.black, fontSize: 15.sp),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
        ),
        Container(
          height: 21.h,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  ProviderFalse!.Data(ProviderTrue!.apps2[index]);
                  Navigator.pushNamed(context, 'AppView');
                  print("tap $index");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 12.h,
                      width: 26.5.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 3,
                            offset: Offset(0,0)
                          )
                        ]
                      ),
                      margin: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: ClipRRect(borderRadius: BorderRadius.circular(21),child: Image.asset("${ProviderTrue!.apps2[index].image}"),),
                    ),
                    Container(
                      width: 24.w,
                      height: 5.h,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${ProviderTrue!.apps2[index].name}\n${ProviderTrue!.apps2[index].rating} ⭐",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        ListTile(
          leading: Container(
              height: 4.h,
              width: 10.w,
              margin: EdgeInsets.only(bottom: 0.3.h),
              child: Image.asset("assets/image/ads.png")
          ),
          title: Text(
            "Suggested for you",
            style: TextStyle(color: Colors.black, fontSize: 15.sp),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
        ),
        Container(
          height: 21.h,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  ProviderFalse!.Data(ProviderTrue!.apps3[index]);
                  Navigator.pushNamed(context, 'AppView',);
                  print("tap $index");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 12.h,
                      width: 26.5.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 3,
                                offset: Offset(0,0)
                            )
                          ]
                      ),
                      margin: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: ClipRRect(borderRadius: BorderRadius.circular(21),child: Image.asset("${ProviderTrue!.apps3[index].image}"),),
                    ),
                    Container(
                      width: 24.w,
                      height: 5.h,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${ProviderTrue!.apps3[index].name}\n${ProviderTrue!.apps3[index].rating} ⭐",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
