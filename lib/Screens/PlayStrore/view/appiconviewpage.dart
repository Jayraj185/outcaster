import 'package:flutter/material.dart';
import 'package:outcaster/Screens/PlayStrore/provider/PlayStoreProvider.dart';
import 'package:provider/provider.dart';

class AppIconViewPage extends StatefulWidget {
  const AppIconViewPage({Key? key}) : super(key: key);

  @override
  State<AppIconViewPage> createState() => _AppIconViewPageState();
}

class _AppIconViewPageState extends State<AppIconViewPage> {
  PlayStoreProvider? ProviderTrue;
  PlayStoreProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<PlayStoreProvider>(context, listen: true);
    ProviderFalse = Provider.of<PlayStoreProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Hero(tag: 'img',child: Image.asset("${ProviderTrue!.p1!.image}")),
        ),
      ),
    );
  }
}
