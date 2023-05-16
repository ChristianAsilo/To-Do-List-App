import 'package:flutter/material.dart';
import 'package:todo_list_app/utils/int_constants.dart';
import 'package:todo_list_app/utils/spacing.dart';
import 'package:todo_list_app/utils/icon_constants.dart';

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
          child: const Icon(addIcon),
        ),
        const VerticalSpacing(height: defaultSixTeen),
        FloatingActionButton(
          onPressed: onSortPressed,
          backgroundColor: Colors.black54,
          child: const Icon(sortIcon),
        ),
      ],
    );
  }
}
