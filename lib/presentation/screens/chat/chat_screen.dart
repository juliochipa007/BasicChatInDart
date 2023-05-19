import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

import '../../widgets/chat/her_message_bubble.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://c-cl.cdn.smule.com/rs-s50/arr/34/81/93e136ad-5bb2-4d71-a835-477493d85c05.jpg')
          ),
        ),
        title: const Text('Soy GOKU'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
              return (index % 2 == 0) 
              ? const MyMessageBubble() 
              : const HerMessageBubble();
            })),
          
          // CAJA de texto
          const MessageFieldBox(),
        ],
        ),
      ),
    );
  }
}