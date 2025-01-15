import 'package:flutter/material.dart';
import '../../models/chat_message.dart';
import '../../theme.dart';
import '../components/appbar_preferred_size.dart';
import 'components/chat_container.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅', style: textTheme().displayMedium),
        bottom: appBarBottomLine(),
      ),
      body: ListView.separated(
        itemCount: chatMessageList.length,
        itemBuilder: (context, index) {
          return ChatContainer(chatMessage: chatMessageList[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(height: 0.5, color: Colors.grey);
        },
      ),
    );
  }
}
