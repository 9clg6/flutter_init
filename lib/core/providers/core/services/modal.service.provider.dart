import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/foundation/services/modal.service.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';

part 'modal.service.provider.g.dart';

/// Modal service provider
@riverpod
ModalService modalService(Ref ref) {
  return ModalService(appRouter: ref.watch(routerProvider));
}
