import 'package:test_svyaz/ui/widgets/main_screen/main_screen.dart';
import 'package:test_svyaz/ui/widgets/main_screen/pages/favorites_widget_page.dart';
import 'package:test_svyaz/ui/widgets/main_screen/pages/main_widget_page.dart';
import 'package:test_svyaz/ui/widgets/main_screen/pages/profile_widget_page.dart';
import 'package:test_svyaz/ui/widgets/main_screen/pages/search_widget_page.dart';
import 'package:test_svyaz/ui/widgets/splash_screen/splash_screen.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/splash',
      page: SplashScreen,
      initial: true
    ),
    AutoRoute(
      path: '/main',
      page: MainScreen,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: MainWidget,
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: SearchWidget,
        ),
        AutoRoute(
          path: 'favorites',
          name: 'FavoritesRouter',
          page: FavoritesWidget,
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: ProfileWidget,
        )
      ]
    ),
  ],
)
class $AppRouter {}