// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dev_api/api_feature/data/model/api_model.dart';

class ApiListItem extends StatelessWidget {
  final Entry entry;
  const ApiListItem({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Colors.grey.withOpacity(
          .2,
        ),
      ),
      padding: EdgeInsets.only(
        left: 8.w,
        right: 8.w,
        top: 8.h,
        bottom: 8.h,
      ),
      margin: EdgeInsets.only(
        left: 8.w,
        right: 8.w,
        top: 8.h,
      ),
      child: ListTile(
        onTap: () {},
        title: Text(entry.api),
        subtitle: Text(
          entry.description,
          style: const TextStyle(
            color: Color(0xff554994),
          ),
        ),
        trailing: SvgPicture.asset(
          "assets/droite.svg",
          height: 14.h,
          width: 14.w,
          color: const Color(0xff554994),
        ),
      ),
    );
  }
}
