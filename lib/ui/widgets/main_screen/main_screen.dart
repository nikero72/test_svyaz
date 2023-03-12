import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_svyaz/const/app_color.dart';
import 'package:test_svyaz/const/app_text_style.dart';
import 'package:test_svyaz/routes/router.gr.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        HomeRouter(),
        SearchRouter(),
        FavoritesRouter(),
        ProfileRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            iconSize: 24,
            selectedItemColor: AppColor().black,
            unselectedItemColor: AppColor().lightGrey,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedLabelStyle: AppTextStyle().bottomLabel,
            unselectedLabelStyle: AppTextStyle().bottomLabel,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/home.png')),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icons/search.png')),
                  label: 'Поиск'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icons/favorites.png')),
                  label: 'Избранное'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icons/profile.png')),
                  label: 'Профиль'
              ),
            ]
        );
      },
    );
  }
}














