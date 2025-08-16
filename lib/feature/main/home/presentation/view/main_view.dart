import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/cart_view.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/favorite_view.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/setting_view.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/bottom_app_bar.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/home_view.dart';
import 'package:puresoft_task/feature/orders/presentation/view/my_orders_view.dart';

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
  Assets.imagesActiveSetting,
];

List<Widget> views = [
  HomeView(),
  MyOrdersView(),
  CartView(),
  FavoriteView(),
  SettingView(),
];
