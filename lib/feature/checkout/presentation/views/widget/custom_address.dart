import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomAddress extends StatelessWidget {
  const CustomAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 20, top: 19, bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.imagesAddress,
                      fit: BoxFit.fill,
                      width: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Address 1',
                      style: AppStyle.textBold16.copyWith(
                        color: const Color(0xFF4A4A4A),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(Assets.imagesTrue, fit: BoxFit.fill),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'John Doe',
            style: AppStyle.textRegular16.copyWith(
              color: const Color(0xFF4A4A4A),
            ),
          ),
          Text(
            '+000-11-1234567',
            style: AppStyle.textRegular16.copyWith(
              color: const Color(0xFF4A4A4A),
            ),
          ),
          SizedBox(height: 4),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            'Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates ',
            style: AppStyle.textRegular16.copyWith(
              color: const Color(0xFF9F9F9F),
            ),
          ),
        ],
      ),
    );
  }
}
