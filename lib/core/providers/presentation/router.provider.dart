import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';

part 'router.provider.g.dart';

/// App router provider
@Riverpod(keepAlive: true)
AppRouter router(Ref ref) {
  return AppRouter();
}
