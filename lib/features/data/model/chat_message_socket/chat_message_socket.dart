import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';

part 'chat_message_socket.freezed.dart';
part 'chat_message_socket.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class ChatMessageSocket with _$ChatMessageSocket {
  const factory ChatMessageSocket({
    String? message,
    SenderEnum? sender,
  }) = _ChatMessageSocket;

  factory ChatMessageSocket.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageSocketFromJson(json);
}
