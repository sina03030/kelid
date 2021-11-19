import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/consts/colors.dart';
import 'package:kellid/presentation/core/consts/routes.dart';

import 'package:kellid/presentation/core/consts/string_values.dart';
import 'package:kellid/presentation/core/pages/item_selector_page.dart';
import 'package:kellid/presentation/core/widgets/custom_app_bar.dart';
import 'package:kellid/presentation/core/widgets/field_container.dart';
import 'package:kellid/presentation/core/widgets/search_field.dart';

class PostLocationPage extends StatelessWidget {
  const PostLocationPage({Key? key}) : super(key: key);
  final routeName = Routes.postLocationPage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
          context: context,
          titleString: StringValues.postLocationPageTitle,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/skyscraper-modern-tree.png',
                        height: 70,
                        width: 70,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        StringValues.postLocationPageBodyText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ),
            Container(
              color: StaticColors.darkGreyColor,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 15,
              ),
              child: Column(
                children: [
                  FieldContainer(
                    hint: StringValues.pickCityHint,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.itemSelectorPage,
                        arguments: ItemSelectorPageArguments(
                          data: [],
                          onSelectedItem: (String value) {},
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
