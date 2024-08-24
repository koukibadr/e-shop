// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final double height;
  final String placeholder;
  final TextEditingController? textController;
  final Function(String?)? onChange;

  const TextFieldWidget({
    super.key,
    required this.placeholder,
    this.height = 40,
    this.textController,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CupertinoTextField(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        controller: textController,
        onChanged: onChange,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xFFCCCCCC),
            width: 1,
          ),
        ),
        placeholder: placeholder,
        prefix: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 5,
          ),
          child: Icon(
            Icons.search,
            color: Color(0xFFCCCCCC),
          ),
        ),
      ),
    );
  }
}
