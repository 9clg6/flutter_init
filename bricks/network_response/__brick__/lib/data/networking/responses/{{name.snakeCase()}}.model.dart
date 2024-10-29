import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}.model.g.dart';

///
/// [{{name.pascalCase()}}RemoteModel]
///
@JsonSerializable()
class {{name.pascalCase()}}RemoteModel with SerializableMixin {
  /// id
  final int? id;

  ///
  /// Constructor from remote model
  ///
  {{name.pascalCase()}}RemoteModel({
    required this.id,
  });

  ///
  /// Parse from json
  /// 
  static {{name.pascalCase()}}RemoteModel fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}RemoteModelFromJson(json);

  ///
  /// Convert to json
  ///
  @override
  Map<String, dynamic> toJson() =>
      _${{name.pascalCase()}}RemoteModelToJson(this);
}
