import 'package:e_shop/core/di/di_handler.dart';
import 'package:e_shop/core/session/secure_session_handler.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getItInstance<SecureSessionHandler>().getUserSession().then((user) {
        if (user == null) {
          GoRouter.of(context).go('/login');
        } else {
          GoRouter.of(context).go('/products');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
