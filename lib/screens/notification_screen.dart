import 'package:flutter/material.dart';
import 'package:woezorap/widget/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        )),
      ),
      body: Column(
        children: [
          NotificationWidget(),
          SizedBox(
            height: 10,
          ),
          NotificationWidget(),
          SizedBox(
            height: 10,
          ),
          NotificationWidget(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
