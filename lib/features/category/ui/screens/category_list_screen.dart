import 'package:crafty_bay/features/common/ui/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
class CategoryListScreen extends StatelessWidget {
  static const String name = '/category-list-item';
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category List'),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context,index){
          return FittedBox(child: const CategoryItemWidget());
        }
      ),
    );
  }
}
