import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final int index;
  final int rating;
  final Color activeColor;
  final Color inactiveColor;
  final VoidCallback onTap;

  const RatingStar({
    super.key,
    required this.index,
    required this.rating,
    required this.onTap,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        index <= rating ? Icons.star : Icons.star_border,
        color: index <= rating ? activeColor : inactiveColor,
        size: 32,
      ),
    );
  }
}
