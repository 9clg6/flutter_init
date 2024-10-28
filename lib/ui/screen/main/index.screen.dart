import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init/foundation/localizations/locale_keys.g.dart';
import 'package:init/foundation/routing/app_router.dart';

///
/// Main screen
///
@RoutePage(name: 'MainScreenRoute')
class MainScreen extends ConsumerStatefulWidget {
  ///
  /// Constructor
  ///
  const MainScreen({super.key});

  ///
  /// Creates the state of the main screen
  ///
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

///
/// State of the main screen
///
class _MainScreenState extends ConsumerState<MainScreen> {
  ///
  /// Builds the main screen
  ///
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo<dynamic>>[
        SecondScreenRoute(),
        SecondScreenRoute(),
      ],
      bottomNavigationBuilder: (
        BuildContext context,
        TabsRouter tabRouter,
      ) {
        return BottomNavigationBar(
          elevation: 0,
          onTap: (int index) {
            tabRouter.setActiveIndex(index);
          },
          currentIndex: tabRouter.activeIndex,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: tr(LocaleKeys.hello),
              icon: const Icon(Icons.abc),
            ),
            BottomNavigationBarItem(
              label: tr(LocaleKeys.hello),
              icon: const Icon(Icons.abc_outlined),
            ),
          ],
        );
      },
    );
  }
}
