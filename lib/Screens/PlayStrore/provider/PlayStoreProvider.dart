import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:outcaster/Screens/PlayStrore/modal/PlayStoreModal.dart';
import 'package:outcaster/Screens/PlayStrore/view/ForYouPage.dart';
import 'package:outcaster/Screens/PlayStrore/view/gamespage.dart';

class PlayStoreProvider extends ChangeNotifier
{
  //Variable's
  int index=0;
  List bottomlist = [
    TabBarView(
      children: [
        GamesPage(),
        GamesPage(),
        GamesPage(),
        GamesPage(),
        GamesPage(),
        GamesPage(),
      ],
    ),
    TabBarView(
      children: [
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
      ],
    ),
    TabBarView(
      children: [
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
      ],
    ),
    TabBarView(
      children: [
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
        ForYouPage(),
      ],
    ),
  ];
  List<PlayStoreModal> apps1 = [
    PlayStoreModal(name: "Google",download: "1TCr+",image: "assets/image/google.jpg",rating: "4.3",reviews: "2C",r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Instagram",download: "100Cr+",image: "assets/image/instagram.jpg",rating: "4.3",reviews: "13 Cr", r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "WhatsApp",download: "500Cr+",image: "assets/image/whatsapp.jpg",rating: "4.1",reviews: "16Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Facebook",download: "500Cr+",image: "assets/image/facebook.jpg",rating: "4.1",reviews: "12Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Twitter",download: "100Cr+",image: "assets/image/twitter.jpg",rating: "4.2",reviews: "1Cr",r1: 8,r2: 2,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Telegram",download: "100Cr+",image: "assets/image/telegram.jpg",rating: "4.2",reviews: "1Cr",r1: 8,r2: 2,r3: 4,r4: 8,r5: 43),
  ];
  List<PlayStoreModal> apps2 = [
    PlayStoreModal(name: "Amazon",download: "10Cr+",image: "assets/image/amazon.jpg",rating: "4.1",reviews: "86L",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "FlipCard",download: "50Cr+",image: "assets/image/flipcard.png",rating: "4.3",reviews: "3Cr",r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Google Pay",download: "50Cr+",image: "assets/image/googlepay.jpg",rating: "4.3",reviews: "88L",r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Paytm",download: "10Cr+",image: "assets/image/paytm.jpg",rating: "4.6",reviews: "1Cr",r1: 8,r2: 4,r3: 10,r4: 12,r5: 43),
    PlayStoreModal(name: "Swiggy",download: "10Cr+",image: "assets/image/swiggy.jpg",rating: "4.5",reviews: "56L",r1: 8,r2: 4,r3: 10,r4: 10,r5: 43),
    PlayStoreModal(name: "PhonePe",download: "10Cr+",image: "assets/image/phonepe.jpg",rating: "4.4",reviews: "93L",r1: 8,r2: 4,r3: 4,r4: 10,r5: 43),
  ];
  List<PlayStoreModal> apps3 = [
    PlayStoreModal(name: "Snapchat",download: "100Cr+",image: "assets/image/snapchat.jpg",rating: "4.1",reviews: "2Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Resso",download: "10Cr+",image: "assets/image/resso.jpg",rating: "4.1",reviews: "31L",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Lightroom",download: "10Cr+",image: "assets/image/lightroom.jpg",rating: "4.4",reviews: "16L",r1: 8,r2: 4,r3: 4,r4: 10,r5: 43),
    PlayStoreModal(name: "YouTube",download: "1TCr+",image: "assets/image/youtube.jpg",rating: "4.1",reviews: "13Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Netflix",download: "100Cr+",image: "assets/image/netflix.jpg",rating: "4.2",reviews: "1Cr",r1: 8,r2: 2,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Hotstar",download: "50Cr+",image: "assets/image/hotstar.jpg",rating: "4.1",reviews: "1Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
  ];
  PlayStoreModal? p1;
  List<PlayStoreModal> allapps = [
    PlayStoreModal(name: "Google",download: "1TCr+",image: "assets/image/google.jpg",rating: "4.3",reviews: "2C",r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Instagram",download: "100Cr+",image: "assets/image/instagram.jpg",rating: "4.3",reviews: "13 Cr", r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "WhatsApp",download: "500Cr+",image: "assets/image/whatsapp.jpg",rating: "4.1",reviews: "16Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Facebook",download: "500Cr+",image: "assets/image/facebook.jpg",rating: "4.1",reviews: "12Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Twitter",download: "100Cr+",image: "assets/image/twitter.jpg",rating: "4.2",reviews: "1Cr",r1: 8,r2: 2,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Telegram",download: "100Cr+",image: "assets/image/telegram.jpg",rating: "4.2",reviews: "1Cr",r1: 8,r2: 2,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Amazon",download: "10Cr+",image: "assets/image/amazon.jpg",rating: "4.1",reviews: "86L",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "FlipCard",download: "50Cr+",image: "assets/image/flipcard.png",rating: "4.3",reviews: "3Cr",r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Google Pay",download: "50Cr+",image: "assets/image/googlepay.jpg",rating: "4.3",reviews: "88L",r1: 8,r2: 4,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Paytm",download: "10Cr+",image: "assets/image/paytm.jpg",rating: "4.6",reviews: "1Cr",r1: 8,r2: 4,r3: 10,r4: 12,r5: 43),
    PlayStoreModal(name: "Swiggy",download: "10Cr+",image: "assets/image/swiggy.jpg",rating: "4.5",reviews: "56L",r1: 8,r2: 4,r3: 10,r4: 10,r5: 43),
    PlayStoreModal(name: "PhonePe",download: "10Cr+",image: "assets/image/phonepe.jpg",rating: "4.4",reviews: "93L",r1: 8,r2: 4,r3: 4,r4: 10,r5: 43),
    PlayStoreModal(name: "Snapchat",download: "100Cr+",image: "assets/image/snapchat.jpg",rating: "4.1",reviews: "2Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Resso",download: "10Cr+",image: "assets/image/resso.jpg",rating: "4.1",reviews: "31L",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Lightroom",download: "10Cr+",image: "assets/image/lightroom.jpg",rating: "4.4",reviews: "16L",r1: 8,r2: 4,r3: 4,r4: 10,r5: 43),
    PlayStoreModal(name: "YouTube",download: "1TCr+",image: "assets/image/youtube.jpg",rating: "4.1",reviews: "13Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
    PlayStoreModal(name: "Netflix",download: "100Cr+",image: "assets/image/netflix.jpg",rating: "4.2",reviews: "1Cr",r1: 8,r2: 2,r3: 4,r4: 8,r5: 43),
    PlayStoreModal(name: "Hotstar",download: "50Cr+",image: "assets/image/hotstar.jpg",rating: "4.1",reviews: "1Cr",r1: 8,r2: 2,r3: 2,r4: 8,r5: 43),
  ];



  //Method's
  void changeindex(ind)
  {
    index=ind;
    notifyListeners();
  }
  void Data(PlayStoreModal pp)
  {
    p1=pp;
    notifyListeners();
  }
  bool value=true;
  void ChaeckboxValue(val)
  {
    value=val;
    notifyListeners();
  }
  bool vale=false;
  void valu(val)
  {
    vale=val;
    notifyListeners();
  }
  bool c1 = true;
  bool c2 = false;
  bool c3 = false;
  bool c4 = false;
  void color1(valu)
  {
    c1=valu;
    notifyListeners();
  }
  void color2(valu)
  {
    c2=valu;
    notifyListeners();
  }
  void color3(valu)
  {
    c3=valu;
    notifyListeners();
  }
  void color4(valu)
  {
    c4=valu;
    notifyListeners();
  }
}