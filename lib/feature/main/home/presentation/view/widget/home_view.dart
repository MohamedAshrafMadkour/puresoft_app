import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return HomeViewBody();
  }
}
