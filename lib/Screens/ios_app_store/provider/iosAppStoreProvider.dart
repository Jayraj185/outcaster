import 'package:flutter/widgets.dart';
import 'package:outcaster/Screens/ios_app_store/modal/iosAppStoreModal.dart';
import 'package:outcaster/Screens/ios_app_store/view/AppsPage.dart';
import 'package:outcaster/Screens/ios_app_store/view/GamesPage.dart';
import 'package:outcaster/Screens/ios_app_store/view/TodayPage.dart';
import 'package:outcaster/Screens/ios_app_store/view/UpdatePage.dart';
import 'package:outcaster/Screens/ios_app_store/view/iosAppStorePage.dart';

class iosAppStoreProvider extends ChangeNotifier
{
  int index=0;
  int index2=0;
  List bottamlist = [
    TodayPage(),
    GamesPage(),
    AppsPage(),
    UpadatePage(),
    TodayPage(),
  ];
  List Today =  [
    "assets/image/google.jpg",
    "assets/image/instagram.jpg",
    "assets/image/whatsapp.jpg",
    "assets/image/facebook.jpg",
    "assets/image/twitter.jpg",
    "assets/image/telegram.jpg",
    "assets/image/amazon.jpg",
    "assets/image/flipcard.png",
    "assets/image/googlepay.jpg",
    "assets/image/paytm.jpg",
    "assets/image/swiggy.jpg",
    "assets/image/phonepe.jpg",
    "assets/image/snapchat.jpg",
    "assets/image/resso.jpg",
    "assets/image/lightroom.jpg",
    "assets/image/youtube.jpg",
    "assets/image/netflix.jpg",
    "assets/image/hotstar.jpg",
  ];
  List<iosAppStoreModal> Games = [
    iosAppStoreModal(tital: "GTA-5",subtital: "Complete in thrilling battels",image: "assets/image/gta5.png"),
    iosAppStoreModal(tital: "Free Fire Max",subtital: "Complete in thrilling battels",image: "assets/image/freefire.jpg"),
    iosAppStoreModal(tital: "Wcc2",subtital: "Complete in thrilling cricket",image: "assets/image/wcc2.jpg"),
    iosAppStoreModal(tital: "PUBG-Mobile India",subtital: "Complete in thrilling battels",image: "assets/image/pubg.jpeg"),
    iosAppStoreModal(tital: "God of War",subtital: "Complete in thrilling battels",image: "assets/image/god.jpg"),
    iosAppStoreModal(tital: "Chess",subtital: "Complete in thrilling Mind's",image: "assets/image/chess.jpg"),
  ];
  List<iosAppStoreModal> Games2 = [
    iosAppStoreModal(tital: "Kings of Pool",subtital: "Uken Games",image: "assets/image/pool.jpg"),
    iosAppStoreModal(tital: "Candy Crush Saga",subtital: "Puzzel - Match 3",image: "assets/image/candy.jpg"),
    iosAppStoreModal(tital: "Minecraft",subtital: "Arcade - Simulation",image: "assets/image/mine.jpg"),
    iosAppStoreModal(tital: "Carrom Pool",subtital: "Sports - Billiards",image: "assets/image/carrom.jpg"),
    iosAppStoreModal(tital: "Ludo King ",subtital: "Board - Ludo",image: "assets/image/ludo.jpg"),
    iosAppStoreModal(tital: "Temple Run",subtital: "Action - Runner",image: "assets/image/run.jpg"),
  ];
  List<iosAppStoreModal> Games3 = [
    iosAppStoreModal(tital: "Talking Tom Cat",subtital: "Simulation - Pet",image: "assets/image/cat.jpg"),
    iosAppStoreModal(tital: "2 Player games",subtital: "Arcade - Board",image: "assets/image/2player.jpg"),
    iosAppStoreModal(tital: "Dr. Driving",subtital: "Racing - Simulation",image: "assets/image/driving.jpg"),
    iosAppStoreModal(tital: "Snake .io",subtital: "Action - IO game",image: "assets/image/snake.jpg"),
    iosAppStoreModal(tital: "Cube Solver",subtital: "Puzzel - Logic",image: "assets/image/cube.jpg"),
    iosAppStoreModal(tital: "Wild Deer Hunting Games",subtital: "Adventure - Action",image: "assets/image/deer.jpg"),
  ];
  List<iosAppStoreModal> Apps1 = [
    iosAppStoreModal(tital: "Google",subtital: "Google LLC - Tools",image: "assets/image/google.jpg"),
    iosAppStoreModal(tital: "Instagram",subtital: "Social - Networking",image: "assets/image/instagram.jpg"),
    iosAppStoreModal(tital: "Snapchat",subtital: "Communication - Social - Networking",image: "assets/image/snapchat.jpg"),
    iosAppStoreModal(tital: "WhatsApp",subtital: "Communication - Messaging & video",image: "assets/image/whatsapp.jpg"),
    iosAppStoreModal(tital: "Facebook",subtital: "Social - Networking",image: "assets/image/facebook.jpg"),
    iosAppStoreModal(tital: "Twitter",subtital: "Twitter, Inc.",image: "assets/image/twitter.jpg"),
  ];
  List<iosAppStoreModal> Apps2 = [
      iosAppStoreModal(tital: "Flipkart ",subtital: "Online Shopping",image: "assets/image/flipcard.png"),
      iosAppStoreModal(tital: "Meesho",subtital: "Online Shopping",image: "assets/image/meesho.jpg"),
      iosAppStoreModal(tital: "Paytm",subtital: "Digital wallets",image: "assets/image/paytm.jpg"),
      iosAppStoreModal(tital: "Phone Pe",subtital: "Digital wallets",image: "assets/image/phonepe.jpg"),
      iosAppStoreModal(tital: "Amazon ",subtital: "Online Shopping",image: "assets/image/amazon.jpg"),
    ];
  List<iosAppStoreModal> Apps3 = [
      iosAppStoreModal(tital: "YouTube",subtital: "Entertainment",image: "assets/image/youtube.jpg"),
      iosAppStoreModal(tital: "HotStar",subtital: "Novi Digital",image: "assets/image/hotstar.jpg"),
      iosAppStoreModal(tital: "Telegram",subtital: "Telegram FZ - LLC",image: "assets/image/telegram.jpg"),
      iosAppStoreModal(tital: "Resso",subtital: "Moon Video Inc.",image: "assets/image/resso.jpg"),
      iosAppStoreModal(tital: "Netflix ",subtital: "Netflix, Inc.",image: "assets/image/netflix.jpg"),
    ];
  List<iosAppStoreModal> Apps4 = [
      iosAppStoreModal(tital: "Lightroom",subtital: "Photography",image: "assets/image/lightroom.jpg"),
      iosAppStoreModal(tital: "Swiggy",subtital: "Foods Delivary",image: "assets/image/swiggy.jpg"),
      iosAppStoreModal(tital: "MX Player",subtital: "Video Player",image: "assets/image/mx.jpg"),
      iosAppStoreModal(tital: "VN Video Editor",subtital: "Video Editors",image: "assets/image/vn.jpg"),
      iosAppStoreModal(tital: "Pocket FM ",subtital: "Music & Audio",image: "assets/image/fm.jpg"),
    ];
  List<iosAppStoreModal> Updates = [
    iosAppStoreModal(tital: "PUBG-Mobile India",subtital: "Yesterday",image: "assets/image/pubg.jpeg",about: "New Map,Gun & Version Add"),
    iosAppStoreModal(tital: "Meesho",subtital: "3 Days Ago",image: "assets/image/meesho.jpg",about: "New Shopping Cart Add"),
    iosAppStoreModal(tital: "VN Video Editor",subtital: "6 Days Ago",image: "assets/image/vn.jpg",about: "New Tool And Animation Add"),
    iosAppStoreModal(tital: "HotStar",subtital: "2 Week Ago",image: "assets/image/hotstar.jpg",about: "TATA IPL 2023 Watch Free"),
    iosAppStoreModal(tital: "Amazon ",subtital: "1 Month Ago",image: "assets/image/amazon.jpg",about: "Add New MINI TV & Watch Physics Wallah Free In MINI TV"),
    iosAppStoreModal(tital: "Wild Deer Hunting Games",subtital: "1 Month Ago",image: "assets/image/deer.jpg",about: "New Gun, Wild Animal & Map Add"),
  ];



  void SliderIndex(inde)
  {
    index=inde;
    notifyListeners();
  }
  void SliderIndex2(inde)
  {
    index2=inde;
    notifyListeners();
  }
}