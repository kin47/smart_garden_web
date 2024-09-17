import 'package:equatable/equatable.dart';
import 'package:smart_garden/features/data/model/user_model/user_model.dart';

class UserEntity extends Equatable {
  final int id;
  final String email;
  final String name;
  final String phoneNumber;
  final String? avatar;
  final bool isAdmin;
  final bool canPredictDisease;
  final bool canReceiveNoti;
  final bool canAutoControl;
  final bool isVerified;

  const UserEntity({
    required this.id,
    required this.phoneNumber,
    required this.email,
    required this.name,
    this.avatar,
    this.isAdmin = false,
    this.canPredictDisease = false,
    this.canReceiveNoti = false,
    this.canAutoControl = false,
    this.isVerified = false,
  });

  factory UserEntity.fromModel(UserModel model) {
    return UserEntity(
      id: model.id ?? 0,
      email: model.email ?? '',
      name: model.name ?? '',
      phoneNumber: model.phoneNumber ?? '',
      avatar: model.avatar,
      isAdmin: model.isAdmin ?? false,
      canPredictDisease: model.canPredictDisease ?? false,
      canReceiveNoti: model.canReceiveNoti ?? false,
      canAutoControl: model.canAutoControl ?? false,
      isVerified: model.isVerified ?? false,
    );
  }

  UserEntity copyWith({
    int? id,
    String? email,
    String? name,
    String? phoneNumber,
    String? avatar,
    bool? isAdmin,
    bool? canPredictDisease,
    bool? canReceiveNoti,
    bool? canAutoControl,
    bool? isVerified,
  }) {
    return UserEntity(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      avatar: avatar ?? this.avatar,
      isAdmin: isAdmin ?? this.isAdmin,
      canPredictDisease: canPredictDisease ?? this.canPredictDisease,
      canReceiveNoti: canReceiveNoti ?? this.canReceiveNoti,
      canAutoControl: canAutoControl ?? this.canAutoControl,
      isVerified: isVerified ?? this.isVerified,
    );
  }

  @override
  List<Object?> get props => [
    id,
    email,
    name,
    phoneNumber,
    avatar,
    isAdmin,
    canPredictDisease,
    canReceiveNoti,
    canAutoControl,
    isVerified,
  ];
}