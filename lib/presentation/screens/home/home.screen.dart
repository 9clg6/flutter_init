import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Home Screem
@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  /// Constructor

  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextVariant('Home', variantType: TextVariantType.titleLarge),
          ],
        ),
      ),
    );
  }
}
