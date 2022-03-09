import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/presentation/home/home_page.dart';
import '../application/current_weather/current_weather_bloc.dart';
import '../application/weather_detail/weather_detail_bloc.dart';
import '../domain/theme/theme.dart';
import '../injection.dart';

@injectable
// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrentWeatherBloc>(
          create: (context) => getIt<CurrentWeatherBloc>(),
        ),
        BlocProvider<WeatherDetailBloc>(
          create: (context) => getIt<WeatherDetailBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
          theme: ThemeData(
            primarySwatch: AppColors.mainMaterialColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
