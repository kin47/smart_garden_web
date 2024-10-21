class EndpointConstants {
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String logout = '/auth/logout';
  static const String me = '/auth/me';
  static const String resendEmailVerification = '/auth/resend';

  static const String store = '/store';

  static const String weather = '/weather';

  static const String notification = '/notification';
  static const String markAsRead = '/notification/mark-as-read/{notification_id}';
  static const String deviceToken = '/device-token';

  static const String userManagement = '/admin/user-management/';
  static const String updateUserInfo = '/admin/user-management/update/{userId}';

  static const String getChatMessages = '/chat/get-chat-messages';
  static const String getChatList = '/chat/get-chat-list';
  static const String sendMessage = '/chat/send-message';

  static const String kitManagement = '/admin/kit-management/';
  static const String usersInKit = '/admin/kit-management/user-in-kit/{kitId}';
  static const String searchUserForKit = '/admin/kit-management/search-user';
  static const String addUserToKit = '/admin/kit-management/add-user-to-kit/{kitId}';

  static const List<String> publicAPI = [
    login,
    register,
    resendEmailVerification,
    weather,
  ];
}
