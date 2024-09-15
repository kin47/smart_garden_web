import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'orderBy')
enum UserOrderByType {
  id('id', 0),
  name('name', 1),
  email('email', 2),
  phoneNumber('phone_number', 3),
  canPredictDisease('can_predict_disease', 4),
  canReceiveNoti('can_receive_noti', 5),
  canAutoControl('can_auto_control', 6),
  ;

  const UserOrderByType(this.orderBy, this.columnIndex);

  final String orderBy;
  final int columnIndex;
}
