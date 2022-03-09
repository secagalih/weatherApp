import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/core/common_util.dart';
import '../../../domain/theme/theme.dart';

class TimelineWidget extends StatelessWidget {
  final String imageUrl;
  final String temp;
  final int dt;
  const TimelineWidget({
    Key? key,
    this.imageUrl = 'http://openweathermap.org/img/wn/11d@2x.png',
    this.temp = '23',
    this.dt = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final time = CommonUtils.dateFormat(
        'Hm', DateTime.fromMillisecondsSinceEpoch(dt * 1000));
    final now = DateTime.now().millisecondsSinceEpoch / 1000;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 9.w),
      width: 66.w,
      height: 95.h,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              dt <= now ? AppColors.gradient1 : Colors.transparent,
              dt <= now ? AppColors.gradient2 : Colors.transparent,
            ],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(27),
          ),
          border: Border.all(
            color: const Color(0xFF687B92),
            width: 1,
          )),
      child: Column(
        children: [
          Text(temp + '°',
              style: Styles.normalStyle.copyWith(
                fontWeight: FontWeight.bold,
              )),
          CachedNetworkImage(imageUrl: imageUrl, height: 43),
          Text('$time', style: Styles.mediumStyle),
        ],
      ),
    );
  }
}
