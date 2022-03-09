import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/presentation/core/spacing.dart';

import '../../../domain/theme/theme.dart';

class BigTemperatureWidget extends StatelessWidget {
  final String imageUrl;
  final String temp;
  final String status;
  final String dateTime;

  const BigTemperatureWidget({
    Key? key,
    this.imageUrl = 'http://openweathermap.org/img/wn/10d@2x.png',
    this.temp = '22',
    this.status = 'Thunderstorm',
    this.dateTime = 'Today, 10 August',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              AddVerticalSpace(280.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    temp,
                    style: Styles.extraBig
                        .copyWith(height: 0.2, letterSpacing: 0.0),
                  ),
                  Text(
                    '°',
                    style: Styles.extraBig.copyWith(
                        height: 0.1,
                        fontSize: 100,
                        letterSpacing: 0.0,
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ],
              ),
              Text(
                status,
                style: Styles.appBarTitleStyle,
              ),
              Text(
                dateTime,
                style: Styles.mediumStyle
                    .copyWith(color: Colors.white.withOpacity(0.5)),
              ),
            ],
          ),
        ),
        Positioned(
          right: 35.w,
          bottom: 120.h,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            height: 214.h,
            width: 226.w,
          ),
        ),
      ],
    );
  }
}
