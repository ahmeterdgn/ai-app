import 'package:ai/const.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefColor.bgColor,
      appBar: AppBar(
        backgroundColor: DefColor.bgColor,
        elevation: 0,
        title: Text(
          'Chat',
          style: TextStyle(
            color: DefColor.colorLight,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: DefColor.colorLight,
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: DefColor.bgCard,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: DefColor.colorLight,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: DefColor.colorLight,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Message',
                              style: TextStyle(
                                color: DefColor.colorLight,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(
                    color: DefColor.colorLight,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: DefColor.bgCard,
                  prefixIcon: Icon(
                    Icons.emoji_emotions,
                    color: DefColor.colorLight,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
