import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String description;
  final Function() onConfirm;

  const ConfirmationDialog({
    super.key,
    required this.description,
    required this.onConfirm,
    required this.title,
  });

  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Text('cancel'),
            ),
            TextButton(
              onPressed: onConfirm,
              child: const Text('confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SizedBox.shrink();
  }
}
