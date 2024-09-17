import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'orderBy')
enum KitOrderByType {
  id('id', 0),
  name('name', 1),
  connected('can_predict_disease', 4),
  ;

  const KitOrderByType(this.orderBy, this.columnIndex);

  final String orderBy;
  final int columnIndex;
}
