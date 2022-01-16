class ConversationModel {
  final String avatar;
  final String fullName;
  int unreadMessageCount;
  final String message;
  final String time;

  ConversationModel(
      {required this.avatar,
      required this.fullName,
      required this.unreadMessageCount,
      required this.message,
      required this.time});
}
