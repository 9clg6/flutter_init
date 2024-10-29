import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kady_flutter/ui/screen/{{name.snakeCase()}}/{{name.snakeCase()}}.view_model.dart';
import 'package:kady_flutter/ui/screen/{{name.snakeCase()}}/{{name.snakeCase()}}.view_state.dart';
import 'package:kady_flutter/ui/widgets/customs/kady_app_bar.dart';
import 'package:kady_flutter/ui/widgets/customs/text_variant.dart';

///
/// [{{name.pascalCase()}}Screen]
///
@RoutePage(name: '{{name.pascalCase()}}ScreenRoute')
class {{name.pascalCase()}}Screen extends ConsumerWidget {

  ///
  /// Constructor
  ///
  const {{name.pascalCase()}}Screen({super.key});

  ///
  /// Build
  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final {{name.pascalCase()}}State state =
        ref.watch<{{name.pascalCase()}}State>({{name.camelCase()}}Provider);
        
    return Scaffold(
      appBar: KadyAppBar(
        onLeadingTap: (){},
        showBottomDivider: false,
      ),
      body: state.loading
          ? const Center(child: CircularProgressIndicator())
          : const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SafeArea(
                child: Center(
                  child: TextVariant('{{name.pascalCase()}} Screen'),
                )
              ),
            ),
    );
  }
}
