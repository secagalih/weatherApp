import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:weatherapp/domain/core/common_util.dart';

import 'package:weatherapp/domain/theme/theme.dart';
import 'package:weatherapp/presentation/core/spacing.dart';
import 'package:weatherapp/presentation/home/widget/big_temperature.dart';
import 'package:weatherapp/presentation/core/details_today.dart';
import 'package:weatherapp/presentation/home/widget/timeline_widget.dart';
import 'package:weatherapp/presentation/weekforecast/week_forcast.dart';

import '../../application/current_weather/current_weather_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<CurrentWeatherBloc>(context)
        .add(const CurrentWeatherEvent.started());
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
          BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
              builder: (context, state) {
            return state.requestCurrentWeather.match(
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
                            ), (currentResponse) {
                      final date = CommonUtils.dateFormat(
                          'EEE, MMM d, ' 'yyyy ',
                          DateTime.fromMillisecondsSinceEpoch(
                              currentResponse.current.dt * 1000));
                      String location = currentResponse.timezone
                          .substring(currentResponse.timezone.indexOf('/') + 1);
                      return Container(
                        width: 355.w,
                        height: 600.h,
                        padding: EdgeInsets.symmetric(
                          vertical: 30.h,
                          horizontal: 30.w,
                        ),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                AppColors.gradient1,
                                AppColors.gradient2
                              ],
                            ),
                            // borderRadius: BorderRadius.only(
                            //   bottomRight: Radius.circular(65),
                            //   bottomLeft: Radius.circular(65),
                            // )
                            borderRadius: BorderRadius.all(
                              Radius.circular(65),
                            )),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset('assets/benik.svg'),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      location,
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
                            AddVerticalSpace(11.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.h, horizontal: 8.w),
                              width: 131.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white // red as border color
                                      ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Colors.yellow,
                                  ),
                                  AddHorizontalSpace(5.w),
                                  Text('Updated 1min ago',
                                      style: Styles.smallStyle),
                                ],
                              ),
                            ),
                            BigTemperatureWidget(
                              temp: '${currentResponse.current.temp.floor()}',
                              dateTime: '$date',
                              imageUrl:
                                  'http://openweathermap.org/img/wn/${currentResponse.current.weather[0].icon}@2x.png',
                              status: currentResponse.current.weather[0].main,
                            ),
                            AddVerticalSpace(55.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DetailsToday(
                                  data:
                                      '${currentResponse.current.windSpeed} +Kmph',
                                ),
                                DetailsToday(
                                  imageAsset: 'assets/humid.svg',
                                  data: '${currentResponse.current.humidity} %',
                                  name: 'Humidity',
                                ),
                                DetailsToday(
                                  imageAsset: 'assets/rain.svg',
                                  data: currentResponse.current.pop == null
                                      ? '0 %'
                                      : '${currentResponse.current.pop! * 100} %',
                                  name: 'Chance of Rain',
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
                () => const Center(
                      child: CircularProgressIndicator(),
                    ));
          }),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: Styles.secondBig
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    InkWell(
                      onTap: () => Get.to(() => const WeekForecastPage()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '7 days',
                            style: Styles.mediumStyle
                                .copyWith(color: Colors.white.withOpacity(0.5)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 14,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                AddVerticalSpace(15.h),
                BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
                  builder: (context, state) {
                    return state.requestCurrentWeather.match(
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
                              (currentWeather) => SizedBox(
                                width: 308.w,
                                height: 111.h,
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      final image = currentWeather
                                          .hourly[index].weather[0].icon;

                                      return TimelineWidget(
                                        dt: currentWeather.hourly[index].dt,
                                        imageUrl:
                                            'http://openweathermap.org/img/wn/$image@2x.png',
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        AddHorizontalSpace(10.w),
                                    itemCount: 4),
                              ),
                            ),
                        () => const Center(
                              child: CircularProgressIndicator(),
                            ));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
