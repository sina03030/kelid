import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/consts/routes.dart';
import 'package:kellid/presentation/core/widgets/custom_app_bar.dart';
import 'package:kellid/presentation/core/widgets/search_field.dart';

class ItemSelectorPage extends StatelessWidget {
  final ItemSelectorPageArguments arguments;

  const ItemSelectorPage({Key? key, required this.arguments}) : super(key: key);

  final routeName = Routes.itemSelectorPage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: SearchField(
              searchOnTap: (String value) {},
              onChanged: (String value) {},
            )),
      ),
    );
  }
}

class ItemSelectorPageArguments {
  final List<String> data;
  final Function(String item) onSelectedItem;

  ItemSelectorPageArguments({
    required this.data,
    required this.onSelectedItem,
  });
}
