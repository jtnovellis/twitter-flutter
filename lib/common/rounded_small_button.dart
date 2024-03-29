import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/theme.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTab;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const RoundedSmallButton({
    super.key,
    required this.onTab,
    required this.label,
    this.backgroundColor = Pallete.backgroundColor,
    this.textColor = Pallete.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
        backgroundColor: backgroundColor,
        labelPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
      ),
    );
  }
}
