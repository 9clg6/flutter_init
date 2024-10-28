import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///
/// Second screen
///
@RoutePage(name: 'SecondScreenRoute')
class SecondScreen extends ConsumerStatefulWidget {
  ///
  /// Constructor
  ///
  const SecondScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SecondScreenState();
}

///
/// State of the second screen
///
class _SecondScreenState extends ConsumerState<SecondScreen> {
  ///
  /// Builds the second screen
  ///
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}