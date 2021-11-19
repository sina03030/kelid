import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/widgets/custom_app_bar.dart';

class UndefinedView extends StatelessWidget {
  const UndefinedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      color: Colors.red,
      child: const Center(
        child: Text('Undefined View'),
      ),
    )));
  }
}
