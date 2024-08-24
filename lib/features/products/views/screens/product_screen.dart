import 'package:dummy_product/features/products/views/bloc/product_bloc.dart';
import 'package:dummy_product/features/products/views/bloc/product_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      context.read<ProductBloc>().add(ProductEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
