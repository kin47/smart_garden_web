import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_garden/base/network/models/base_data.dart';
import 'package:smart_garden/common/constants/endpoint_constants.dart';
import 'package:smart_garden/features/data/model/conversation_model/conversation_model.dart';
import 'package:smart_garden/features/data/model/message_model/message_model.dart';
import 'package:smart_garden/features/data/request/get_chat_messages_request/get_chat_messages_request.dart';

part 'chat_service.g.dart';

@RestApi()
@Injectable()
abstract class ChatService {
  @factoryMethod
  factory ChatService(Dio dio) = _ChatService;

  @GET(EndpointConstants.chatConversations)
  Future<BaseListData<ConversationModel>> getConversations({
    @Query('limit') int? limit,
  });

  @GET('${EndpointConstants.chatConversations}/{conversationId}/messages')
  Future<BaseListData<MessageModel>> getMessages({
    @Path('conversationId') required int conversationId,
    @Queries() required GetChatMessagesRequest request,
  });
}
