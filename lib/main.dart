import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:belaaraby/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'bindings.dart';
import 'myPacks/myConstants.dart';
import 'myPacks/myLocale/myLocale.dart';
import 'myPacks/myLocale/myLocaleCtr.dart';
import 'myPacks/myTheme/myTheme.dart';
import 'myPacks/myTheme/myThemeCtr.dart';
import 'loadingScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

SharedPreferences? sharedPrefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();
  await firebaseInitialization;
  await Firebase.initializeApp();

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  //lang
  MyLocaleCtr langCtr =   Get.put(MyLocaleCtr());
  //theme
  MyThemeCtr themeCtr =   Get.put(MyThemeCtr());

  @override
  Widget build(BuildContext context) {
   return ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(

            debugShowCheckedModeBanner: false,
            title: 'بالعربي',

            //theme: themeCtr.initTheme,
            theme: customLightTheme,
            darkTheme: customDarkTheme,
            themeMode: ThemeMode.system,

            locale: langCtr.initlang,
            translations: MyLocale(),

            initialBinding: GetxBinding(),
            initialRoute: '/',
            getPages: [
              GetPage(name: '/', page: () => LoadingScreen()),
              GetPage(name: '/LoadingScreen', page: () => LoadingScreen()),
              GetPage(name: '/ScreenManager', page: () => ScreenManager()),
            ],
          );
        }
    );
  }
}

/// Buttons Page Route
class ScreenManager extends StatefulWidget {
  @override
  _ScreenManagerState createState() => _ScreenManagerState();
}


class _ScreenManagerState extends State<ScreenManager> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[

          TextButton(
              onPressed: ()=>sharedPrefs!.clear(),
              child: Text('clear prefs')),
          // TextButton(
          //     onPressed: () {
          //       authCtr.signOut();
          //     },
          //     child: Text('sign out')),
          TextButton(
              onPressed: () {
                Get.to(() => LoadingScreen());
              },
              child: Text('LoadingScreen')),

          TextButton(
              onPressed: () {
                Get.to(() => TestScreen());

              },
              child: Text('test')),

        ],
      ),
    );
  }
}

///data Exchange Between Screens
// dataExchangeBetweenScreens() {
// /// push data in arguments (put it in first screen)
// Get.to(() => FormularStoreView(), arguments: [
// {
// 'isEdit': 'v',
// }
// ])!
//     .then((result) {
// /// gete the returned data to first screen
// print(result[0]["backValue"]);
// }).ignore();
// /// get the arguments (put it in next screen)
// Get.arguments[0]['isEdit']; // return 'v'
//
//
// /// return data in results (put it in next screen)
// Get.back(result: [
// {"backValue": "one"}
// ]);
//
// },
