import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.userInfoModel, });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: Styles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: Styles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
