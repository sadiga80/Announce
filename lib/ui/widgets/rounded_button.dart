import 'package:announce/themes/app_palettes.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color bgColor;
  final Color textColor;
  const RoundedButton(
      {super.key,
      required this.onTap,
      required this.label,
      this.bgColor = AppPalettes.whiteColor,
      this.textColor = AppPalettes.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: textColor, fontSize: 16),
      ),
      backgroundColor: bgColor,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
    );
  }
}
