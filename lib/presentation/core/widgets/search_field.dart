import 'package:flutter/material.dart';
import 'package:kellid/presentation/core/consts/colors.dart';

class SearchField extends StatelessWidget {
  final Function(String string)? searchOnTap;
  final String? hint;
  final Function(String string)? onChanged;
  final String? prevValue;

  const SearchField({
    Key? key,
    this.searchOnTap,
    this.onChanged,
    this.prevValue,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController(text: prevValue);
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: StaticColors.globalBackgroundColor,
        border: Border.all(width: 1, color: StaticColors.greyColor,),),
      child: Row(
        children: [
          if (searchOnTap != null)
            IconButton(
              onPressed: () => searchOnTap!(_controller.text),
              icon: const Icon(
                Icons.search,
                color: StaticColors.greyColor,
              ),
            ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.end,
              controller:_controller,
              onChanged: (String string){
                if(onChanged != null){
                  onChanged!(string);
                }
              },
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
