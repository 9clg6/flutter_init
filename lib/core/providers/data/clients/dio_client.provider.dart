import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/config/appconfig.provider.dart';
import 'package:starter_kit/data/clients/dio.client.dart';
import 'package:starter_kit/foundation/config/app_config.dart';

part 'dio_client.provider.g.dart';

/// Dio client provider
@riverpod
Future<DioClient> dioClient(Ref ref) async {
  final AppConfig appConfig = ref.watch(appConfigProvider);

  return DioClient.basic(appConfig);
}
