import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items =[
    UserInfoModel(image: Assets.imagesAvatar1, title: 'Rahma Sherif', subtitle: 'rahma@gmail.com'),
    UserInfoModel(image: Assets.imagesAvatar2, title: 'Abdelrahman', subtitle: 'Abdelrahman@gmail.com'),
    UserInfoModel(image: Assets.imagesAvatar3, title: 'Radwa', subtitle: 'radwa@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: 
          items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
        
      ),
    );
  }
}