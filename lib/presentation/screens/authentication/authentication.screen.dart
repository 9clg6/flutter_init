import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/presentation/screens/authentication/authentication.state.dart';
import 'package:starter_kit/presentation/screens/authentication/authentication.view_model.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Authentication Screen
@RoutePage()
class AuthenticationScreen extends ConsumerStatefulWidget {
  /// Constructor
  const AuthenticationScreen({super.key});

  /// Create State
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AuthenticationScreenState();
}

class _AuthenticationScreenState extends ConsumerState<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    final Authentication viewModel = ref.watch(authenticationProvider.notifier);
    final AsyncValue<AuthenticationState> state = ref.watch(
      authenticationProvider,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: state.when(
            data: (AuthenticationState data) => Form(
              key: viewModel.formKey,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Gap(96)],
              ),
            ),
            error: (Object error, StackTrace stackTrace) =>
                TextVariant(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
