import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/screens/{{name.snakeCase}}/{{name.snakeCase}}.state.dart';
import 'package:starter_kit/presentation/screens/{{name.snakeCase}}/{{name.snakeCase}}.view_model.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// {{name.pascalCase}} Screen
@RoutePage()
class {{name.pascalCase}}Screen extends ConsumerStatefulWidget {
  /// Constructor
  const {{name.pascalCase}}Screen({super.key});

  @override
  ConsumerState<{{name.pascalCase}}Screen> createState() =>
      _{{name.pascalCase}}ScreenState();
}

class _{{name.pascalCase}}ScreenState
    extends ConsumerState<{{name.pascalCase}}Screen> {
  @override
  Widget build(BuildContext context) {
    final {{name.pascalCase}}ViewModel viewModel = ref.watch(
      {{name.camelCase}}ViewModelProvider.notifier,
    );
    final AsyncValue<{{name.pascalCase}}State> state = ref.watch(
      {{name.camelCase}}ViewModelProvider,
    );

    return Scaffold(
      body: SafeArea(
        child: state.when(
          data: ({{name.pascalCase}}State data) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextVariant(
                  '{{name.pascalCase}} Screen',
                  variantType: TextVariantType.titleLarge,
                ),
                const SizedBox(height: 16),
                TextVariant(
                  'isLoading: ${data.isLoading}',
                  variantType: TextVariantType.bodyLarge,
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: viewModel.toggleLoading,
                  child: const Text('Toggle loading'),
                ),
              ],
            ),
          ),
          error: (Object error, StackTrace stackTrace) =>
              TextVariant(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
