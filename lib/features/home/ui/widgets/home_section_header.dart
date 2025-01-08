import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),
        ),
        TextButton(onPressed: onTap, child: const Text('View all'))
      ],
    );
  }
}