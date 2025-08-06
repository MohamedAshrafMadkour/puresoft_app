import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/cart_view.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/favorite_view.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/filter_view.dart';
import 'package:puresoft_task/feature/main/sort/presentation/view/sort_view.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/bottom_app_bar.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        onItemTapped: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),

      body: SafeArea(child: views[currentIndex]),
    );
  }
}

List<String> barImage = [
  Assets.imagesActiveHome,
  Assets.imagesActiveFilliter,
  Assets.imagesActiveCart,
  Assets.imagesActiveFav,
  Assets.imagesActiveSort,
];

List<Widget> views = [
  HomeView(),
  FilterView(),
  CartView(),
  FavoriteView(),
  SortView(),
];

List<String> barTitle = [
  'Fruit Market',
  'Filter',
  'Basket',
  'Favorite',
  'Sort',
];
