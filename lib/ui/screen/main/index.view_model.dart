import 'package:init/application/providers/initializer.dart';
import 'package:init/domain/service/navigation.service.dart';
import 'package:init/ui/screen/main/index.view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'index.view_model.g.dart';

///
/// [IndexViewModel]
///
@riverpod
class IndexViewModel extends _$IndexViewModel {
  /// Navigation service
  final NavigationService _navigationService;

  ///
  /// Constructor
  ///
  factory IndexViewModel() {
    return IndexViewModel._(
      navigationService: injector<NavigationService>(),
    );
  }

  ///
  /// Private constructor
  ///
  IndexViewModel._({required NavigationService navigationService})
      : _navigationService = navigationService {
    init();
  }

  ///
  /// Build
  ///
  @override
  IndexScreenState build() => IndexScreenState.initial();

  ///
  /// Init
  ///
  Future<void> init() async {}

  ///
  /// Navigate back
  ///
  void navigateBack(dynamic result) {
    _navigationService.navigateBack(result: result);
  }
}
