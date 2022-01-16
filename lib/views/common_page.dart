import 'package:flutter/material.dart';
import 'package:day_2/components/avatar.dart';
import 'package:day_2/components/conversation.dart';
import 'package:day_2/components/story.dart';
import 'package:day_2/data/repository.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({Key? key}) : super(key: key);

  @override
  _CommonPageState createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  final userList = Dummy.users;
  final conversationsList = Dummy.conversations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Common Page")),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  child: userWidget(),
                ),
                Expanded(child: conversationsWidget())
              ],
            )));
  }

  Widget userWidget() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: userList.length,
      itemBuilder: (_, index) {
        return StoryList(
          avatar: userList[index].avatar,
          userName: userList[index].userName,
        );
      },
    );
  }

  Widget conversationsWidget() {
    return ListView.builder(
      itemCount: conversationsList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 16),
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return ConversationList(
          name: conversationsList[index].fullName,
          messageText: conversationsList[index].message,
          imageUrl: conversationsList[index].avatar,
          time: conversationsList[index].time,
          unreadMessageCount: conversationsList[index].unreadMessageCount,
        );
      },
    );
  }
}
