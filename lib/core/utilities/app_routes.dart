import 'package:dummy_product/features/authentication/ui/screens/authentication_screen.dart';
import 'package:dummy_product/features/cart/ui/screens/cart_screen.dart';
import 'package:dummy_product/features/products/ui/screens/product_screen.dart';
import 'package:dummy_product/features/products/ui/screens/product_screen_details.dart';
import 'package:dummy_product/features/splash_screen.dart';
import 'package:go_router/go_router.dart';

final appRoutes = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const AuthenticationScreen(),
    ),
    GoRoute(
      path: '/products',
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
