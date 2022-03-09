import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherapp/domain/theme/theme.dart';

class DetailsToday extends StatelessWidget {
  final String imageAsset;
  final String data;
  final String name;

  const DetailsToday({
    Key? key,
    this.imageAsset = 'assets/wind.svg',
    this.data = '12Kmph',
    this.name = 'Wind',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(imageAsset),
        Text(
          data,
          style: Styles.mediumStyle,
        ),
        Text(
          name,
          style:
              Styles.mediumStyle.copyWith(color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}
