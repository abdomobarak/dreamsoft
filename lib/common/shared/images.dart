import 'package:dream_soft/flavors/flavor_binding.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:flutter/services.dart';


class Images {
  static String appLogo = "";
  static String homeAd1 = "";
  static String back = "";
  static String cancel = "";
  static String pay = "";
  static String book = "";
  static String call = "";
  static String whatsapp = "";
  static String fav = "";
  static String location = "";
  static String makfula = "";
  static String share = "";
  static String slindr = "";
  static String homeAd2 = "";
  static String homeAd3 = "";
  static String homeAd4 = "";
  static String menu = "";
  static String notification = "";
  static String search = "";
  static String about = "";
  static String contact = "";
  static String menuFav = "";
  static String home = "";
  static String partner = "";
  static String q = "";
  static String signout = "";
  static String sitting = "";
  static String user = "";
  static String add = "";
  static String upload = "";
  static String edit = "";
  static String dotCircle = "";
  static String singIn = "";
  static String image1 = "";
  static String image5 = "";
  static String image6 = "";
  static String image11 = "";
  static String banner ="";



  static Future<void> initImages() async {
    appLogo = await checkImage('Image11.png');
    homeAd1 = await checkImage('Home - ad1.svg');
    back = await checkImage("Back.svg");
    cancel = await checkImage("Book Page - Cancel.svg");
    pay = await checkImage("Book Page - Pay.svg");
    book = await checkImage("Car Page - Book.png");
    call = await checkImage("Car Page - Call.svg");
    whatsapp = await checkImage("Car Page - Chat by WHatsapp.svg");
    fav = await checkImage("Car Page - Fav.svg");
    location = await checkImage("Car Page - Location.svg");
    makfula = await checkImage("Car Page - Makfula.svg");
    share = await checkImage("Car Page - Share.svg");
    slindr = await checkImage("Car Page - Slindr.svg");
    homeAd2 = await checkImage("Home - Ad2.svg");
    homeAd3 = await checkImage("Home - Ad3.svg");
    homeAd4 = await checkImage("Home - Ad4.svg");
    menu = await checkImage("Home - menu.svg");
    notification = await checkImage("Home - Notification .svg");
    search = await checkImage("Home - Search.svg");
    about = await checkImage("Menu - About.svg");
    contact = await checkImage("Menu - Contact.svg");
    menuFav = await checkImage("Menu - Fav.svg");
    home = await checkImage("Menu - Home.svg");
    partner = await checkImage("Menu - Partner.svg");
    q = await checkImage("Menu - Q.svg");
    signout = await checkImage("Menu - signout.svg");
    sitting = await checkImage("Menu - Sitting.svg");
    user = await checkImage("Menu - User.svg");
    add = await checkImage("Partner - Add.png");
    upload = await checkImage("Partner - Upload.png");
    edit = await checkImage("Profile Page - Edit.svg");
    singIn = await checkImage("Sing-in Partner.svg");
    image1 = await checkImage("Image 1.png");
    image5 = await checkImage("Image5.png");
    image6 = await checkImage("Image 6.svg");
    image11 = await checkImage("Image11.png");
    banner = await checkImage("banner.png");
  }

  static Future<String> checkImage(String path) async {
    var finalPath = "";
    try {
      if (appFlavor.appNameEnum == AppNameEnum.cars) {
        finalPath = "assets/common/images/$path";
      }
      await rootBundle.loadString(finalPath);
      return finalPath;
    } on FormatException {
      return finalPath;
    } catch (_) {
      return "assets/images/$path";
    }
  }

// static String appLogo() {
//   var flavor = Get.find<MyFlavorConfig>();
//   if (flavor.appNameEnum == AppNameEnum.client) {
//     return appLogoClient();
//   } else {
//     return appLogoSp();
//   }
// }
}
