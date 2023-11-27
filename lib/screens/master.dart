import 'package:ai/const.dart';
import 'package:ai/screens/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefColor.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: DefColor.primary,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Icon(
                      Icons.menu,
                    ),
                  ),
                  Text(
                    'Hi, Michael 👋',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: DefColor.colorLight,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: DefColor.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                    child: Icon(
                      Icons.notifications,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/bg3.png'),
                //     fit: BoxFit.cover,
                //   ),
                // ),
                child: Image.asset(
                  'assets/images/bg3.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                top: 100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How may I help you today?',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: DefColor.colorLight,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.21,
                          width: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            color: DefColor.primary,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color:
                                          DefColor.colorLight.withOpacity(0.5),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(400),
                                      ),
                                    ),
                                    child:
                                        Icon(Icons.spatial_audio_off_rounded),
                                  ),
                                  Icon(Icons.arrow_outward_outlined),
                                ],
                              ),
                              Text(
                                'Talk to me',
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(ChatPage());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.height * 0.2,
                                decoration: BoxDecoration(
                                  color: DefColor.prubleColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: DefColor.colorLight
                                                .withOpacity(0.5),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(400),
                                            ),
                                          ),
                                          child: Icon(Icons.chat, size: 15),
                                        ),
                                        Icon(Icons.arrow_outward_outlined),
                                      ],
                                    ),
                                    Text(
                                      'Chat with Bot',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                color: DefColor.pruble2Color,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: DefColor.colorLight
                                              .withOpacity(0.5),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(400),
                                          ),
                                        ),
                                        child:
                                            Icon(Icons.image_search, size: 15),
                                      ),
                                      Icon(Icons.arrow_outward_outlined),
                                    ],
                                  ),
                                  Text(
                                    'Search by Image',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: DefColor.colorLight,
                          ),
                        ),
                        Text(
                          'See all ',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 4,
                            fontSize: 15,
                            color: DefColor.colorLight.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (i, c) {
                        return Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: DefColor.bgCard,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: DefColor.primary,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(500),
                                ),
                              ),
                              child: Icon(
                                Icons.chat,
                                color: DefColor.colorLight,
                              ),
                            ),
                            title: Text(
                              'How to make a good coffee? asdfasdf asdfasd asdf',
                              style: TextStyle(
                                color: DefColor.colorLight,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: Icon(
                              Icons.more_vert_rounded,
                              color: DefColor.colorLight,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
