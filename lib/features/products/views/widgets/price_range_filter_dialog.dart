import 'package:flutter/material.dart';

class PriceRangeFilterDialog extends StatefulWidget {
  final double maxPrice;
  final double minPrice;
  final RangeValues rangeValues;
  final Function(RangeValues) onPriceChanged;

  const PriceRangeFilterDialog({
    super.key,
    required this.maxPrice,
    required this.minPrice,
    required this.rangeValues,
    required this.onPriceChanged,
  });

  @override
  State<PriceRangeFilterDialog> createState() => _PriceRangeFilterDialogState();

  void show(BuildContext context) {
    showModalBottomSheet(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.3,
      ),
      context: context,
      builder: (context) {
        return this;
      },
    );
  }
}

class _PriceRangeFilterDialogState extends State<PriceRangeFilterDialog> {

  late RangeValues rangeValues = widget.rangeValues;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFF6F6F6),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Select the price interval',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        var defaultPriceRange = RangeValues(widget.minPrice, widget.maxPrice);
                        widget.onPriceChanged(defaultPriceRange);
                        setState(() {
                          rangeValues = defaultPriceRange;
                        });
                      },
                      child: const Text(
                        'Reset all',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.blue,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Text('${rangeValues.start.toStringAsFixed(2)} \$'),
                          Expanded(
                            child: RangeSlider(
                              values: rangeValues,
                              onChanged: (value) {
                                widget.onPriceChanged.call(value);
                                setState(() {
                                  rangeValues = RangeValues(
                                    double.parse(value.start.toStringAsFixed(2)),
                                    double.parse(value.end.toStringAsFixed(2)),
                                  );
                                });
                              },
                              max: widget.maxPrice,
                              min: widget.minPrice,
                              labels: RangeLabels(
                                rangeValues.start.round().toString(),
                                rangeValues.end.round().toString(),
                              ),
                            ),
                          ),
                          Text('${rangeValues.end.toStringAsFixed(2)} \$'),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Apply Filter'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
