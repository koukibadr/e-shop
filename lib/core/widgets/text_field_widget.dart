// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final double height;
  final String placeholder;
  final TextEditingController? textController;
  final Function(String?)? onChange;
  final Color fillColor;
  final double borderRadius;
  final IconData prefixIcon;

  const TextFieldWidget({
    super.key,
    required this.placeholder,
    this.height = 40,
    this.textController,
    this.onChange,
    this.borderRadius = 20,
    this.fillColor = Colors.white,
    this.prefixIcon = Icons.search,
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
          color: fillColor,
          borderRadius: BorderRadius.circular(borderRadius),
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
            prefixIcon,
            color: Color(0xFFCCCCCC),
          ),
        ),
      ),
    );
  }
}
