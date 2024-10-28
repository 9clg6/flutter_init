import 'package:init/application/config/app_config.dart';
import 'package:init/kernel.dart';

///
/// The main function of the application.
///
void main() async {
  /// Kernel with app config
  final Kernel kernel = Kernel(
    appConfig: AppConfig.fromEnvironment(),
  );

  /// Bootstrap the kernel
  await kernel.bootstrap();

  /// Run the kernel
  kernel.run();
}
