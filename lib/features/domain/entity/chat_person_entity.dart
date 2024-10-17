import 'package:equatable/equatable.dart';

class ChatPersonEntity extends Equatable {
  final int? id;
  final int userId;
  final String? userAvatar;
  final String username;
  final String? lastMessage;
  final DateTime? lastMessageTime;
  final int unreadMessageCount;

  const ChatPersonEntity({
    this.id,
    required this.userId,
    this.userAvatar,
    required this.username,
    this.lastMessage,
    this.lastMessageTime,
    required this.unreadMessageCount,
  });

  // factory ChatPersonEntity.fromModel(ChatMessageModel model) {
  //   return ChatPersonEntity(
  //     id: model.id,
  //     userAvatar: model.userAvatar,
  //     username: model.username,
  //     lastMessage: model.lastMessage,
  //     lastMessageTime: model.lastMessageTime,
  //     unreadMessageCount: model.unreadMessageCount,
  //   );
  // }

  ChatPersonEntity copyWith({
    int? id,
    int? userId,
    String? userAvatar,
    String? username,
    String? lastMessage,
    DateTime? lastMessageTime,
    int? unreadMessageCount,
  }) {
    return ChatPersonEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      userAvatar: userAvatar ?? this.userAvatar,
      username: username ?? this.username,
      lastMessage: lastMessage ?? this.lastMessage,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime,
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    );
  }

  @override
  List<Object?> get props => [
    id,
    userId,
    userAvatar,
    username,
    lastMessage,
    lastMessageTime,
    unreadMessageCount,
  ];
}
