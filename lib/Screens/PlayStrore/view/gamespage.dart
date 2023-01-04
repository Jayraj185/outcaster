import 'package:flutter/material.dart';
import 'package:outcaster/Screens/PlayStrore/provider/PlayStoreProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
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
          title: Text("Show installed apps"),
          trailing: Switch(
            onChanged: (value){
              ProviderFalse!.valu(value);
            },
            value: ProviderTrue!.vale,
            activeColor: Colors.green,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                ProviderFalse!.color1(!ProviderFalse!.c1);
              },
              child: Container(
                height: 4.h,
                width: 19.w,
                decoration: BoxDecoration(
                  color: ProviderFalse!.c1?Colors.green.shade50:Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black12)
                ),
                alignment: Alignment.center,
                child: Text("Top free",style: TextStyle(color: Colors.green.shade700),),
              ),
            ),
            InkWell(
              onTap: (){
                ProviderFalse!.color2(!ProviderFalse!.c2);
              },
              child: Container(
                height: 4.h,
                width: 24.w,
                decoration: BoxDecoration(
                  color: ProviderFalse!.c2?Colors.green.shade50:Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black12)
                ),
                alignment: Alignment.center,
                child: Text("Top grossing",style: TextStyle(color: Colors.green.shade700),),
              ),
            ),
            InkWell(
              onTap: (){
                ProviderFalse!.color3(!ProviderFalse!.c3);
              },
              child: Container(
                height: 4.h,
                width: 19.w,
                decoration: BoxDecoration(
                  color: ProviderFalse!.c3?Colors.green.shade50:Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black12)
                ),
                alignment: Alignment.center,
                child: Text("Tranding",style: TextStyle(color: Colors.green.shade700),),
              ),
            ),
            InkWell(
              onTap: (){
                ProviderFalse!.color4(!ProviderFalse!.c4);
              },
              child: Container(
                height: 4.h,
                width: 19.w,
                decoration: BoxDecoration(
                  color: ProviderFalse!.c4?Colors.green.shade50:Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black12)
                ),
                alignment: Alignment.center,
                child: Text("Top paid",style: TextStyle(color: Colors.green.shade700),),
              ),
            ),
          ],
        ),
        Container(
          height: 68.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: ProviderTrue!.allapps.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  ProviderFalse!.Data(ProviderTrue!.allapps[index]);
                  Navigator.pushNamed(context, 'AppView');
                },
                child: Container(
                  height: 13.h,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 8.w,),
                      Text(
                        "${index+1}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        height: 7.3.h,
                        width: 7.5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.5,
                                  offset: Offset(0,0)
                              )
                            ]
                        ),
                        alignment: Alignment.center,
                        child: ClipRRect(borderRadius: BorderRadius.circular(9),child: Image.asset("${ProviderTrue!.allapps[index].image}",)),
                      ),
                      SizedBox(width: 2.w,),
                      Container(
                        height: 12.h,
                        width: 45.w,
                        alignment: Alignment.center,
                        child: ListTile(
                          title: Text("${ProviderTrue!.allapps[index].name}"),
                          subtitle: Text("${ProviderTrue!.allapps[index].name}\n${ProviderTrue!.allapps[index].rating} ⭐"),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
