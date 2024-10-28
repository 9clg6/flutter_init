import 'package:init/foundation/routing/app_router.dart';
import 'package:injectable/injectable.dart';

///
/// Module to inject dependencies
/// 
// Note | Here we inject :
// - AppRouter
// - DioClient
// - Interceptor
//
@module
abstract class CoreModule {
  ///
  @singleton
  AppRouter appRouter() => AppRouter();
}
