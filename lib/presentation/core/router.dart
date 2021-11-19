import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/pages/item_selector_page.dart';
import 'package:kellid/presentation/core/pages/undefined_view.dart';
import 'package:kellid/presentation/post_registration/location/post_location_page.dart';

import 'consts/routes.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Routes.postLocationPage:
      return MaterialPageRoute(builder: (context) => const PostLocationPage());
    case Routes.itemSelectorPage:
      ItemSelectorPageArguments argument =
          routeSettings.arguments as ItemSelectorPageArguments;
      return MaterialPageRoute(
        builder: (context) => ItemSelectorPage(
          arguments: argument,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const UndefinedView());
  }
}
