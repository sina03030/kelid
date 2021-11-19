import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/consts/colors.dart';

AppBar customAppBar({
  required BuildContext context,
  Widget? title,
  String? titleString,
  bool? hasBackButton,
  Widget? backButton,
}) {
  return AppBar(
    title: title ??
        Text(
          titleString ?? '',
          style: Theme.of(context).textTheme.headline6,
        ),
    centerTitle: true,
    backgroundColor: StaticColors.whiteColor,
    leading: backButton ??
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: StaticColors.greyColor,
          ),
        ),
  );
}
