import 'package:flutter/material.dart';
import 'package:outcaster/Screens/AndroidSetting/provider/AndroidSettingProvider.dart';
import 'package:provider/provider.dart';

class AndroidSettingPage extends StatefulWidget {
  const AndroidSettingPage({Key? key}) : super(key: key);

  @override
  State<AndroidSettingPage> createState() => _AndroidSettingPageState();
}

class _AndroidSettingPageState extends State<AndroidSettingPage> {
  AndroidProvider? ProviderTrue;
  AndroidProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of(context,listen: true);
    ProviderFalse = Provider.of(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setting UI"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 15,bottom: 10),
                child: Text(
                  "Common",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.language_outlined,color: Colors.grey,size: 30,),
                title: Text("Language"),
                subtitle: Text("English"),
              )
            ),
            SizedBox(height: 15,),
            Divider(thickness: 0.5,),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.cloud_outlined,color: Colors.grey,size: 30,),
                  title: Text("Environment"),
                  subtitle: Text("Production"),
                )
            ),
            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 15,bottom: 10),
                child: Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 15),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.phone,color: Colors.grey,size: 30,),
                title: Text("Phone Number"),
              )
            ),
            SizedBox(height: 1,),
            Divider(thickness: 0.5,),
            Container(
                height: 30,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 15),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email,color: Colors.grey,size: 30,),
                  title: Text("Email"),
                )
            ),
            SizedBox(height: 15,),
            Divider(thickness: 0.5,),
            Container(
                height: 30,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 15),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app,color: Colors.grey,size: 30,),
                  title: Text("Sign out"),
                )
            ),
            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 15,bottom: 10),
                child: Text(
                  "Security",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              child: ListTile(
                leading: Icon(Icons.security_update,color: Colors.grey,size: 30,),
                title: Text("Lock app in background"),
                trailing: Switch(
                  onChanged: (value){
                    ProviderTrue!.Change(value);
                  },
                  value: ProviderTrue!.swich,
                  activeColor: Colors.red,
                ),
              ),
            ),
            Container(
              height: 60,
              child: ListTile(
                leading: Icon(Icons.fingerprint,color: Colors.grey,size: 30,),
                title: Text("Use fingerprint"),
                trailing: Switch(
                  onChanged: (value){
                    ProviderTrue!.Change2(value);
                  },
                  value: ProviderTrue!.swich2,
                  activeColor: Colors.red,
                ),
              ),
            ),
            Container(
              height: 60,
              child: ListTile(
                leading: Icon(Icons.lock,color: Colors.grey,size: 30,),
                title: Text("Change password"),
                trailing: Switch(
                  onChanged: (value){
                    ProviderTrue!.Change3(value);
                  },
                  value: ProviderTrue!.swich3,
                  activeColor: Colors.red,
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 15,bottom: 10),
                child: Text(
                  "Misc",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                  ),
                ),
              ),
            ),
            Container(
                height: 30,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 25),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.terminal_sharp,color: Colors.grey,size: 30,),
                  title: Text("Terms of Service"),
                )
            ),
            Container(
                height: 30,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 35),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.file_copy_rounded,color: Colors.grey,size: 30,),
                  title: Text("Open source licenses"),
                )
            ),
          ],
        ),
      ),
    );
  }
}
