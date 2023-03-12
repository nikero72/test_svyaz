// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../ui/widgets/main_screen/main_screen.dart' as _i2;
import '../ui/widgets/main_screen/pages/favorites_widget_page.dart' as _i5;
import '../ui/widgets/main_screen/pages/main_widget_page.dart' as _i3;
import '../ui/widgets/main_screen/pages/profile_widget_page.dart' as _i6;
import '../ui/widgets/main_screen/pages/search_widget_page.dart' as _i4;
import '../ui/widgets/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainWidget(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SearchWidget(),
      );
    },
    FavoritesRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FavoritesWidget(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileWidget(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i7.RouteConfig(
          MainScreen.name,
          path: '/main',
          children: [
            _i7.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainScreen.name,
            ),
            _i7.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainScreen.name,
            ),
            _i7.RouteConfig(
              FavoritesRouter.name,
              path: 'favorites',
              parent: MainScreen.name,
            ),
            _i7.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainScreen.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i7.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreen extends _i7.PageRouteInfo<void> {
  const MainScreen({List<_i7.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i3.MainWidget]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'home',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.SearchWidget]
class SearchRouter extends _i7.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i5.FavoritesWidget]
class FavoritesRouter extends _i7.PageRouteInfo<void> {
  const FavoritesRouter()
      : super(
          FavoritesRouter.name,
          path: 'favorites',
        );

  static const String name = 'FavoritesRouter';
}

/// generated route for
/// [_i6.ProfileWidget]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'ProfileRouter';
}
