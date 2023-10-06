import 'package:auto_route/auto_route.dart';
import 'package:rest_countries_flutter/src/presentation/view/detail_page.dart';
import 'package:rest_countries_flutter/src/presentation/view/home_page.dart';
import 'package:rest_countries_flutter/src/presentation/view/splash_screen.dart';
part 'auto_router_custom.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AutoRouterCustom extends _$AutoRouterCustom {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashScreenRoute.page, initial: true),
    AutoRoute(page: HomeScreenRoute.page)
  ];
}