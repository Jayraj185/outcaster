import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../provider/iosProductProvider.dart';

class iosProductPage extends StatefulWidget {
  const iosProductPage({Key? key}) : super(key: key);

  @override
  State<iosProductPage> createState() => _iosProductPageState();
}

class _iosProductPageState extends State<iosProductPage> {
  iosProductProvider? ProviderTrue;
  iosProductProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<iosProductProvider>(context,listen: true);
    ProviderFalse = Provider.of<iosProductProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Text(""),
          border: Border(),
          backgroundColor: CupertinoColors.white,
        ),
        backgroundColor: CupertinoColors.white,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.w,),
              child: Text(
                "Cupertino Store",
                style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            SizedBox(height: 1.h,),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: ProviderTrue!.productList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 12.h,
                    width: MediaQuery.of(context).size.width,
                    //color: CupertinoColors.systemRed,
                    margin: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        SizedBox(width: 3.w,),
                        Container(
                          height: 10.h,
                          width: 10.h,
                          decoration: BoxDecoration(
                              color: CupertinoColors.black,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("${ProviderTrue!.productList[index].image}",fit: BoxFit.cover,),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Container(
                          height: 12.h,
                          width: 53.w,
                          //color: CupertinoColors.systemOrange,
                          //alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              SizedBox(height: 3.6.h,),
                              Align(alignment: Alignment.centerLeft,child: Text("${ProviderTrue!.productList[index].name}",style: TextStyle(fontWeight: FontWeight.w600,color: CupertinoColors.black,fontSize: 12.sp,decoration: TextDecoration.none),)),
                              SizedBox(height: 1.h,),
                              Align(alignment: Alignment.centerLeft,child: Text("\$${ProviderTrue!.productList[index].price}",style: TextStyle(fontWeight: FontWeight.w300,color: CupertinoColors.systemGrey,fontSize: 10.sp,decoration: TextDecoration.none),)),
                            ],
                          ),
                        ),
                        Container(
                          height: 12.h,
                          width: 12.w,
                          alignment: Alignment.centerLeft,
                          child: CupertinoButton(
                            onPressed: (){
                              ProviderFalse!.AddToCart(ProviderFalse!.productList[index]);
                              ProviderFalse!.Total(index);
                            },
                            child: Icon(CupertinoIcons.add_circled,color: CupertinoColors.activeBlue,size: 30,),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            // SizedBox(
            //   height: 6.h,
            //   child: CupertinoTabBar(
            //     backgroundColor: CupertinoColors.white,
            //     items: [
            //       BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            //       BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
            //       BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart)),
            //     ],
            //   ),
            // )
          ],
        )
      ),
    );
  }
}
