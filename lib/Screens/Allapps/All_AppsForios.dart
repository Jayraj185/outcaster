import 'package:flutter/cupertino.dart';

class All_Apps_For_ios extends StatefulWidget {
  const All_Apps_For_ios({Key? key}) : super(key: key);

  @override
  State<All_Apps_For_ios> createState() => _All_Apps_For_iosState();
}

class _All_Apps_For_iosState extends State<All_Apps_For_ios> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Choice Any App",style: TextStyle(color: CupertinoColors.white),),
          backgroundColor: CupertinoColors.systemRed,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoButton(
                child: Text("IOS Setting"),
                onPressed: () {
                  Navigator.pushNamed(context, 'iossetting');
                },
              ),
              CupertinoButton(
                child: Text("IOS App Strore"),
                onPressed: () {
                  Navigator.pushNamed(context, 'iosAppStorePage');
                },
              ),
              CupertinoButton(
                child: Text("Cupertino Store"),
                onPressed: () {
                  Navigator.pushNamed(context, 'ProductStore');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
