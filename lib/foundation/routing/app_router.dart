// Manually add screens import here
import 'package:auto_route/auto_route.dart';
import 'package:init/ui/screen/main/index.screen.dart';
import 'package:init/ui/screen/second/second.screen.dart';

part 'app_router.gr.dart';

///
/// App router
///
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  ///
  /// Default route type
  ///
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  ///
  /// Routes
  ///
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          path: '/',
          guards: const <AutoRouteGuard>[
            //AuthGuard(),
          ],
          page: MainScreenRoute.page,
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              path: 'second',
              page: SecondScreenRoute.page,
              initial: true,
            ),
          ],
        ),
      ];
}
