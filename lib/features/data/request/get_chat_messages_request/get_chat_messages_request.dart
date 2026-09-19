import 'package:smart_garden/common/config/api_config.dart';

class GetChatMessagesRequest {
  final int? before;
  final int limit;

  const GetChatMessagesRequest({
    this.before,
    this.limit = ApiConfig.limit,
  });

  Map<String, dynamic> toJson() => {
        if (before != null) 'before': before,
        'limit': limit,
      };
}
