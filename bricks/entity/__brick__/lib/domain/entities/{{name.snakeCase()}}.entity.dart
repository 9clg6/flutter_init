import 'package:equatable/equatable.dart';

///
/// [{{name.pascalCase()}}]
///
interface class {{name.pascalCase()}} with EquatableMixin {
  /// id
  final int? id;

  ///
  /// Constructor
  ///
  {{name.pascalCase()}}({
    required this.id,
  });

  ///
  /// from {{name.pascalCase()}}RemoteModel
  /// 
  factory {{name.pascalCase()}}.fromRemote(
    {{name.pascalCase()}}RemoteModel remoteModel,
  ) {
    return {{name.pascalCase()}}(
      id: remoteModel.id,
    );
  }

  /// Props
  @override
  List<Object?> get props => <Object?>[
        id,
      ];

}
