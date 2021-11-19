import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/consts/colors.dart';

class FieldContainer extends StatelessWidget {
  final String? hint;
  final String? value;
  final Function? onTap;

  const FieldContainer({
    Key? key,
    this.hint,
    this.value,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onTap != null){
          onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: StaticColors.globalBackgroundColor,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (hint != null)
              Text(
                hint!,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 16,
                    ),
              ),
            if (value != null)
              Text(
                value!,
              ),
          ],
        ),
      ),
    );
  }
}
