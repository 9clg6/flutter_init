import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';
import 'package:starter_kit/domain/services/dialog.service.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';

part 'dialog.service.provider.g.dart';

/// Dialog service provider
@Riverpod(keepAlive: true)
DialogService dialogService(Ref ref) {
  final AppRouter appRouter = ref.read(routerProvider);
  return DialogService(appRouter: appRouter);
}
