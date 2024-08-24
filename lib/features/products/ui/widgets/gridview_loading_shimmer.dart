import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class GridViewLoadingShimmer extends StatelessWidget {
  const GridViewLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 30,
        crossAxisSpacing: 10,
        children: List.generate(
          10,
          (index) => Shimmer(
            color: const Color(0xFFE7E7E7),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Shimmer(
                      color: Colors.grey,
                      child: Container(
                        width: 150,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Shimmer(
                          color: Colors.grey,
                          child: Container(
                            width: 200,
                            height: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Shimmer(
                          color: Colors.grey,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
