import 'package:dummy_product/features/products/ui/widgets/quantity_button.dart';
import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  final Function(int quantity)? onQuantityChanged;
  final int initialQuantity;

  const QuantityWidget({
    Key? key,
    required this.onQuantityChanged,
    this.initialQuantity = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (initialQuantity > 0)
          QuantityButton(
            isIncrement: false,
            onTap: () {
              var newQuantity = initialQuantity - 1;
              onQuantityChanged?.call(newQuantity);
            },
          ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(initialQuantity.toString()),
        ),
        QuantityButton(
          isIncrement: true,
          onTap: () {
            var newQuantity = initialQuantity + 1;
            onQuantityChanged?.call(newQuantity);
          },
        )
      ],
    );
  }
}
