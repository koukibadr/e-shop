import 'package:dummy_product/core/di/di_handler.dart';
import 'package:dummy_product/core/utilities/app_routes.dart';
import 'package:dummy_product/features/products/views/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  initializeDI();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => getItInstance.get<ProductBloc>(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routerConfig: appRoutes,
    );
  }
}
