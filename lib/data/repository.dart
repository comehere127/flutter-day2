import 'package:day_2/models/conversation_model.dart';
import 'package:day_2/models/user_model.dart';
import 'package:day_2/models/button_model.dart';

class Dummy {
  static List<ConversationModel> conversations = [
    ConversationModel(
        avatar: "assets/images/ava1.jpg",
        fullName: "Herman Pope",
        unreadMessageCount: 0,
        message: 'Hey, how\'s it going?',
        time: "04:04AM"),
    ConversationModel(
        avatar: "assets/images/ava2.jpg",
        fullName: "Herman Laura",
        unreadMessageCount: 4,
        message: 'Hey, how\'s it going? 2',
        time: "14:04AM"),
    ConversationModel(
        avatar: "assets/images/ava3.jpg",
        fullName: "Herman Christopher",
        unreadMessageCount: 5,
        message: 'Hey, how\'s it going? 3',
        time: "20:04AM"),
  ];

  static List<UserModel> users = [
    UserModel(
      userName: "Christopher",
      avatar: "assets/images/ava1.jpg",
    ),
    UserModel(
      userName: "Laura",
      avatar: "assets/images/ava3.jpg",
    ),
    UserModel(
      userName: "Pope",
      avatar: "assets/images/ava2.jpg",
    ),
    UserModel(
      userName: "Jeffrey",
      avatar: "assets/images/ava1.jpg",
    ),
    UserModel(
      userName: "Reese",
      avatar: "assets/images/ava3.jpg",
    ),
    UserModel(
      userName: "Hallie",
      avatar: "assets/images/ava1.jpg",
    ),
    UserModel(
      userName: "Sandoval",
      avatar: "assets/images/ava2.jpg",
    )
  ];

  static List<ButtonModel> buttons = [
    ButtonModel(
      text: "Common Components",
    ),
  ];
}
