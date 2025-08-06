import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_home_app_bar.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_second_home_section.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_third_home_section_header.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_third_section_item_list.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/first_home_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHomeBar(title: 'Fruit Market'),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 15)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: HomeFirstSection(),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [CustomSecondHomeSection(), SizedBox(height: 16)],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      CustomThirdHomeSectionHeader(),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: CustomThirdHomeSectionItemList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
