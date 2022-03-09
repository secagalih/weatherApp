import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weatherapp/domain/theme/theme.dart';
import 'package:weatherapp/presentation/core/spacing.dart';
import 'package:weatherapp/presentation/weekforecast/widget/days_item.dart';

import '../../application/weather_detail/weather_detail_bloc.dart';
import '../core/details_today.dart';

class WeekForecastPage extends StatefulWidget {
  const WeekForecastPage({Key? key}) : super(key: key);

  @override
  State<WeekForecastPage> createState() => _WeekForecastPageState();
}

class _WeekForecastPageState extends State<WeekForecastPage> {
  @override
  void initState() {
    BlocProvider.of<WeatherDetailBloc>(context)
        .add(const WeatherDetailEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            width: 355.w,
            height: 357.h,
            padding: EdgeInsets.symmetric(
              vertical: 30.h,
              horizontal: 30.w,
            ),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [AppColors.gradient1, AppColors.gradient2],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(65),
                )),
            alignment: Alignment.topCenter,
            child: BlocBuilder<WeatherDetailBloc, WeatherDetailState>(
                builder: (context, state) {
              return state.requestWeatherDetail.match(
                  (either) => either.fold(
                          (failure) => Center(
                                child: Text(
                                  failure.map(
                                    serverError: (error) => error.message,
                                    noInternet: (_) => 'No Internet',
                                    unexpected: (_) => 'Unexpected Error',
                                    timeout: (_) => 'Request timeout',
                                  ),
                                  style: Styles.inputErrorStyle,
                                ),
                              ), (r) {
                        final image = r.current.weather[0].icon;
                        final status = r.current.weather[0].main;
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset('assets/benik.svg'),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/Calendar.svg'),
                                    Text(
                                      ' 7 Days',
                                      style: Styles.appBarTitleStyle,
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  size: 22,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            AddVerticalSpace(15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      'http://openweathermap.org/img/wn/$image@2x.png',
                                  fit: BoxFit.fill,
                                  height: 166.h,
                                  width: 166.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Today',
                                      style: Styles.appBarTitleStyle,
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: '${r.current.temp.floor()}⁰',
                                          style: Styles.appBarTitleStyle
                                              .copyWith(
                                                  fontSize: 60,
                                                  height: 1.1,
                                                  letterSpacing: 00)),
                                    ])),
                                    Text(status,
                                        style: Styles.exNormal.copyWith(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            height: 1)),
                                  ],
                                )
                              ],
                            ),
                            AddVerticalSpace(15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DetailsToday(
                                  data: '${r.current.windSpeed}',
                                ),
                                DetailsToday(
                                  imageAsset: 'assets/humid.svg',
                                  data: '${r.current.humidity}%',
                                  name: 'Humidity',
                                ),
                                DetailsToday(
                                  imageAsset: 'assets/rain.svg',
                                  data: '87%',
                                  name: 'Chance of Rain',
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                  () => const Center(
                        child: CircularProgressIndicator(),
                      ));
            }),
          ),
          AddVerticalSpace(33.h),
          BlocBuilder<WeatherDetailBloc, WeatherDetailState>(
              builder: (context, state) {
            return state.requestWeatherDetail.match(
                (either) => either.fold(
                    (failure) => Center(
                          child: Text(
                            failure.map(
                              serverError: (error) => error.message,
                              noInternet: (_) => 'No Internet',
                              unexpected: (_) => 'Unexpected Error',
                              timeout: (_) => 'Request timeout',
                            ),
                            style: Styles.inputErrorStyle,
                          ),
                        ),
                    (r) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          width: 331.w,
                          height: 359.h,
                          child: ListView.separated(
                              itemBuilder: (context, index) => DayItemWidget(
                                    dt: r.daily[index].dt,
                                    imageUrl: r.daily[index].weather[0].icon,
                                    status: r.daily[index].weather[0].main,
                                    temp: r.daily[index].temp.max.floor(),
                                  ),
                              separatorBuilder: (context, index) =>
                                  AddVerticalSpace(7.h),
                              itemCount: r.daily.length),
                        )),
                () => const Center(
                      child: CircularProgressIndicator(),
                    ));
          })
        ],
      ),
    );
  }
}
