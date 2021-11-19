import 'package:flutter/material.dart';

import 'package:kellid/presentation/core/consts/routes.dart';
import './presentation/core/router.dart' as router;
import 'package:kellid/presentation/core/consts/colors.dart';
import 'package:kellid/presentation/post_registration/location/post_location_page.dart';

import 'core/init_dio.dart';
import 'core/service_locator.dart';

void main() {
  setUpGetIt();
  initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: StaticColors.primaryColor,
        backgroundColor: StaticColors.globalBackgroundColor,
        scaffoldBackgroundColor: StaticColors.globalBackgroundColor,
        textTheme: const TextTheme(
          /// headline6 used for :
          /// appbar title theme
          /// (add theme location where you use it)
          headline6: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w400,
            color: StaticColors.darkGreyColor,
          ),

          subtitle2: TextStyle(
            fontSize: 13,
            color: StaticColors.greyColor,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      onGenerateRoute: router.generateRoute,
      home: const PostLocationPage(),
      initialRoute: Routes.postLocationPage,
    );
  }
}
