part of 'auto_router_custom.dart';

abstract class _$AutoRouterCustom extends RootStackRouter {
  _$AutoRouterCustom({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    DetailScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailPage(),
      );
    },
  };
}

class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute({List<PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

class DetailScreenRoute extends PageRouteInfo<void> {
  const DetailScreenRoute({List<PageRouteInfo>? children})
      : super(
          DetailScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
