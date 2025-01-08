import 'package:crafty_bay/app/app_colors.dart';
import 'package:crafty_bay/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/ui/widgets/app_bar_icon_button.dart';
import '../widgets/category_item_widget.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_section_header.dart';
import '../widgets/product_search_bar.dart';
class HomeScreen extends StatefulWidget {
  static const String name = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchBarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBarMethod(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 16,),
              ProductSearchBar(
                controller: _searchBarController,
              ),
              const SizedBox(height: 16,),
              HomeCarouselSlider(),
              const SizedBox(height: 16,),
              HomeSectionHeader(
                title: 'Category',
                onTap: (){},
              ),
              const SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getCategoryList(),
                ),
              ),
              const SizedBox(height: 16,),
              HomeSectionHeader(
                title: 'Popular',
                onTap: (){},
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 120,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.themeColor.withOpacity(0.14),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(AssetsPath.shoesImg, width: 120,),
                      ),
                      Column(
                        children: [
                          Text(
                              'Nike Shoes latest Edition- RF45770',
                              maxLines: 1,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54
                              ),
                            ),
                          ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      )
    );
  }
  List<Widget> _getCategoryList(){
    List<Widget> categoryList = [];
    for(int i=0;i<10;i++){
      categoryList.add(Padding(
        padding: const EdgeInsets.only(right: 16),
        child: const CategoryItemWidget(),
      ),);
    }
    return categoryList;
  }

  AppBar _buildAppBarMethod() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.navlogosvg),
      actions: [
        AppbarIconButton(
          icon: Icons.person,
          onTap: (){},
        ),
        const SizedBox(width: 6,),
        AppbarIconButton(
          icon: Icons.call,
          onTap: (){},
        ),
        const SizedBox(width: 6,),
        AppbarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: (){},
        )
      ],
    );
  }
}










