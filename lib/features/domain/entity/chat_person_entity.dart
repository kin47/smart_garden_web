import 'package:equatable/equatable.dart';
import 'package:smart_garden/features/data/model/chat_person_model/chat_person_model.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';

class ChatPersonEntity extends Equatable {
  final int userId;
  final String? userAvatar;
  final String username;
  final String? lastMessage;
  final DateTime? lastMessageTime;
  final SenderEnum? sender;
  final int unreadMessageCount;

  const ChatPersonEntity({
    required this.userId,
    this.userAvatar,
    required this.username,
    this.lastMessage,
    this.lastMessageTime,
    this.sender,
    required this.unreadMessageCount,
  });

  factory ChatPersonEntity.fromModel(ChatPersonModel model) {
    return ChatPersonEntity(
      userId: model.userId ?? 0,
      userAvatar: model.avatar,
      username: model.username ?? '',
      lastMessage: model.lastMessage,
      lastMessageTime: model.lastMessageTime,
      sender: model.sender,
      unreadMessageCount: model.unreadMessageCount ?? 0,
    );
  }

  ChatPersonEntity copyWith({
    int? userId,
    String? userAvatar,
    String? username,
    String? lastMessage,
    SenderEnum? sender,
    DateTime? lastMessageTime,
    int? unreadMessageCount,
  }) {
    return ChatPersonEntity(
      userId: userId ?? this.userId,
      userAvatar: userAvatar ?? this.userAvatar,
      username: username ?? this.username,
      lastMessage: lastMessage ?? this.lastMessage,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime,
      sender: sender ?? this.sender,
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    );
  }

  @override
  List<Object?> get props => [
    userId,
    userAvatar,
    username,
    lastMessage,
    lastMessageTime,
    sender,
    unreadMessageCount,
  ];
}
