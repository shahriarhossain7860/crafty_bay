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
              Row(
                children: [
                  CategoryItemWidget()
                ],
              )
            ],
          ),
        ),
      )
    );
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










