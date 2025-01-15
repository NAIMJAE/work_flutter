import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';
import '../../../theme.dart';
import '../../components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 25,
            imageUrl: chatMessage.profileImage,
            width: 50,
            height: 50,
          ),
          ////////
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(chatMessage.sender, style: textTheme().titleMedium),
                      const SizedBox(width: 4.0),
                      Text('${chatMessage.location} · ${chatMessage.sendDate}'),
                    ],
                  ),
                  Text(
                    chatMessage.message,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: textTheme().bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          // Text('${chatMessage.imageUri.runtimeType}')
          Visibility(
            visible: chatMessage.imageUri != null,
            child: ImageContainer(
              borderRadius: 15,
              imageUrl: chatMessage.imageUri ?? '',
              width: 50,
              height: 50,
            ),
          ),
          ////////
        ],
      ),
    );
  }
}
