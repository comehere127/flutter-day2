import 'package:flutter/material.dart';
import 'package:day_2/components/avatar.dart';

// ignore: must_be_immutable
class StoryList extends StatefulWidget {
  String avatar;
  String userName;
  StoryList({
    Key? key,
    required this.avatar,
    required this.userName,
  }) : super(key: key);
  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Avatar(
                  imageUrl: widget.avatar,
                  imageSize: 50,
                ),
                Positioned(
                  right: 0,
                  bottom: -1,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(widget.userName),
          ],
        ),
      ),
    );
  }
}
