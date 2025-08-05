import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/presentation/screens/home/home.state.dart';

part 'home.view_model.g.dart';

/// Home view model
@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<HomeState> build() async {
    return HomeState.initial(isLoading: false);
  }
}
