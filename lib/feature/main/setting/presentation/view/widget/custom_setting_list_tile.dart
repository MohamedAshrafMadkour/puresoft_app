import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/main/setting/data/model/setting_model.dart';

class CustomSettingListTile extends StatelessWidget {
  const CustomSettingListTile({
    super.key,
    required this.settingModel,
    this.onPressed,
  });
  final SettingModel settingModel;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(settingModel.icon, fit: BoxFit.fill),
      title: Text(settingModel.title, style: AppStyle.textRegular14(context)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          size: 16,
          Icons.arrow_forward_ios,
          color: const Color(0xFF858D9A),
        ),
      ),
    );
  }
}
