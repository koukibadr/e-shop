import 'package:flutter/material.dart';

class LoadingPopup extends StatelessWidget {
  const LoadingPopup({
    super.key,
    required this.message,
    this.dismiss = true,
  });

  final String message;
  final bool dismiss;

  show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: dismiss,
      builder: (context) => AlertDialog(
        content: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(
              height: 20,
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}
