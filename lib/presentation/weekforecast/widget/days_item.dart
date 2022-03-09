import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/domain/theme/theme.dart';

import '../../../domain/core/common_util.dart';

class DayItemWidget extends StatelessWidget {
  final String imageUrl;
  final int dt;
  final int temp;
  final String status;
  const DayItemWidget(
      {Key? key,
      this.imageUrl = 'http://openweathermap.org/img/wn/10d@2x.png',
      this.dt = 0,
      this.temp = 20,
      this.status = 'rainy'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = CommonUtils.dateFormat(
        'EEE', DateTime.fromMillisecondsSinceEpoch(dt * 1000));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$date',
          style: Styles.exNormal.copyWith(color: Colors.white.withOpacity(0.5)),
        ),
        Row(
          children: [
            CachedNetworkImage(
              imageUrl: 'http://openweathermap.org/img/wn/$imageUrl@2x.png',
              fit: BoxFit.fill,
              height: 46,
              width: 46,
            ),
            Text(status,
                style: Styles.exNormal
                    .copyWith(color: Colors.white.withOpacity(0.5))),
          ],
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(text: '$temp⁰', style: Styles.exNormal),
        ]))
      ],
    );
  }
}
