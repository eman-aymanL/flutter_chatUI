import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'message.dart';
import 'message_bubble.dart';
import 'input_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  final List<Message> messages = const [
    Message(text: 'Hello !', isMe: false),
    Message(text: 'Hello !', isMe: true),
    Message(
      text:
          'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It\'s like the universe loves to surprise us when we least expect it!',
      isMe: false,
    ),
    Message(image: 'assets/images/sunset.png', isMe: false),
    Message(text: 'what a Great Content Tp learn Flutter', isMe: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.green,
        leadingWidth: 30,
        leading: const Icon(Icons.arrow_back_ios,
            color: AppColors.white, size: 18),
        title: const Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(width: 10),
            Text(
              'Mohamed Ahmed',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.call, color: AppColors.white, size: 20),
          SizedBox(width: 16),
          Icon(Icons.videocam, color: AppColors.white, size: 22),
          SizedBox(width: 8),
          Icon(Icons.more_vert, color: AppColors.white),
          SizedBox(width: 8),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return MessageBubble(message: messages[index]);
                },
              ),
            ),
            const InputBar(),
          ],
        ),
      ),
    );
  }
}