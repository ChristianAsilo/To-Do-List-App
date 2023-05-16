import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
    required this.onAddPressed,
    required this.onSortPressed,
  }) : super(key: key);

  final VoidCallback onAddPressed;
  final VoidCallback onSortPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onAddPressed,
          backgroundColor: Colors.black54,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        FloatingActionButton(
          onPressed: onSortPressed,
          backgroundColor: Colors.black54,
          child: const Icon(Icons.sort),
        ),
      ],
    );
  }
}
