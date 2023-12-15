import 'package:json_annotation/json_annotation.dart';


part 'store.g.dart';

@JsonSerializable(explicitToJson: true)
class Strong {
 String name;

  Strong(this.name);

  factory Strong.fromJson(Map<String, dynamic> json) => _$StrongFromJson(json);

  Map<String, dynamic> toJson() => _$StrongToJson(this);
}