import 'package:dummy_product/features/cart/views/screens/cart_screen.dart';
import 'package:dummy_product/features/products/views/screens/product_screen.dart';
import 'package:dummy_product/features/products/views/screens/product_screen_details.dart';
import 'package:go_router/go_router.dart';

final appRoutes = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => const ProductDetailScreen(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartScreen(),
    ),
  ],
);
