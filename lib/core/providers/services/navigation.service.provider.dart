import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';
import 'package:starter_kit/domain/services/navigation.service.dart';

part 'navigation.service.provider.g.dart';

/// Navigation service provider
@Riverpod(keepAlive: true)
NavigationService navigationService(Ref ref) {
  return NavigationService(appRouter: ref.read(routerProvider));
}
