import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/widget/fav_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  static const routeName = 'favorite_view';
  @override
  Widget build(BuildContext context) {
    return FavViewBody();
  }
}
