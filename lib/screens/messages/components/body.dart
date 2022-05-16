import 'package:chatapp/constants.dart';
import 'package:chatapp/models/ChatMessage.dart';
import 'package:chatapp/screens/messages/components/chat_input_field.dart';
import 'package:chatapp/screens/messages/components/message.dart';
import 'package:chatapp/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: demeChatMessages[index],
              ),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}

