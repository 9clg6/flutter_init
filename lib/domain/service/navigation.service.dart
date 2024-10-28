import 'package:init/application/providers/initializer.dart';
import 'package:init/foundation/routing/app_router.dart';

///
/// [NavigationService]
///
class NavigationService {
  /// App router
  final AppRouter _appRouter;

  ///
  /// Constructor
  ///
  NavigationService(this._appRouter);

  ///
  /// Get injected [NavigationService]
  ///
  static NavigationService injected() => injector<NavigationService>();

  ///
  /// Navigate back
  ///
  void navigateBack<T>({T? result}) {
    _appRouter.root.maybePop(result);
  }

  ///
  /// Reset to home
  ///
  void resetToHome() {
    return _appRouter.root.popUntilRoot();
  }
}
