import 'package:dummy_product/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class ProductScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Function(String?)? onSearch;
  final Function() onRangeFilterPressed;

  const ProductScreenAppBar({
    super.key,
    required this.onSearch,
    required this.onRangeFilterPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFF6F6F6),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Products',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFieldWidget(
                      placeholder: 'Search',
                      onChange: onSearch,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: FloatingActionButton(
                      backgroundColor: Colors.amber[700],
                      onPressed: onRangeFilterPressed,
                      elevation: 0,
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
