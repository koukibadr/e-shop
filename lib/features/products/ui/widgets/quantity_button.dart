import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final bool isIncrement;
  final Function()? onTap;

  const QuantityButton({
    super.key,
    required this.isIncrement,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 22,
        width: 22,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 1,
            color: Colors.blue,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          isIncrement ? Icons.add : Icons.remove,
          size: 15,
          color: Colors.blue,
        ),
      ),
    );
  }
}
