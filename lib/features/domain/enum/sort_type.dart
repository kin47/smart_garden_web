import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'type')
enum SortType {
  asc(1),
  desc(0);

  const SortType(this.type);

  final int type;
}
