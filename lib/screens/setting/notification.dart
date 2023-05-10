import 'package:e_library/shared/settings.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/models/setting.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  List<Notify> notifications = [
    Notify(status: 'pending', title: 'Remember to pick up your book', description: 'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero et velit interdum, ac aliquet odio mattis.', id: '#00618575'),
    Notify(status: 'success', title: 'Your book ready to pick up', description: 'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero et velit interdum, ac aliquet odio mattis.', id: '#00618575'),
    Notify(status: 'received', title: 'Your order has been received', description: 'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero et velit interdum, ac aliquet odio mattis.', id: '#00618575'),
  ];

  List<Notify> notificationsMonth = [
    Notify(status: 'completed', title: 'You have finished My Boring Life', description: '', id: '#00618575'),
    Notify(status: 'pending', title: 'Remember to pick up your book', description: 'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero et velit interdum, ac aliquet odio mattis.', id: '#00618575'),
    Notify(status: 'success', title: 'Your book ready to pick up', description: 'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero et velit interdum, ac aliquet odio mattis.', id: '#00618575'),
    Notify(status: 'received', title: 'Your order has been received', description: 'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc libero et velit interdum, ac aliquet odio mattis.', id: '#00618575'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xff1A3130),
              Color(0xff080F0F),
            ],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
            children: [
              Container(
                height: 62,
                color: bgOnBoard,
                child: Row(
                  children: [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15, right: 3),
                        child: Icon(Icons.close, size: 37,color: Colors.white,),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'Notifications',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Quick Sand',
                          fontSize: 22,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 130,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            'This Week',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Quick Sand',
                                fontSize: 16,
                                color: greyColor
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: notifications.map((notify) => NotificationList(notify: notify)).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            'March 2023',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Quick Sand',
                                fontSize: 16,
                                color: greyColor
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: notificationsMonth.map((notify) => NotificationList(notify: notify)).toList(),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
