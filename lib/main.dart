import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp/infrastructure/core/location_service.dart';
import 'package:weatherapp/injection.dart';
import 'package:weatherapp/presentation/app_widget.dart';
import 'package:weatherapp/simple_bloc_delegate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection(Environment.dev);

  BlocOverrides.runZoned(() => runApp(getIt<AppWidget>()),
      blocObserver: getIt<SimpleBlocObserver>());
}
