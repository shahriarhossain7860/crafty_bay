import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.themeColor.withOpacity(0.12),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                AssetsPath.shoesImg,
                width: 140,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Nike Shoes latest Edition- RF45770',
                    maxLines: 1,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                  const SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$100',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.themeColor
                        ),
                      ),
                      Wrap(
                        children: [
                          Icon(Icons.star,color: Colors.amber, size: 18,),
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.themeColor
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: AppColors.themeColor,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Icon(Icons.favorite_border,size: 14,color: Colors.white,),
                      )
                    ],
                  ),
                  const SizedBox(height: 4,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}