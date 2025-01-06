import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.14),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(
            Icons.computer,
            color: AppColors.themeColor,
            size: 48,
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          'Computer',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 1,
              color: AppColors.themeColor
          ),
        ),
      ],
    );
  }
}