import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/widget/history_card.dart';

class AppointmentHistory extends StatelessWidget {
  const AppointmentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Woezor',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  foreground: Paint()
                    ..shader = LinearGradient(colors: [
                      secondaryColor,
                      primaryColor,
                    ]).createShader(
                      const Rect.fromLTWH(0, 0, 100, 50),
                    ),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {},
                color: dark,
                iconSize: 28,
                icon: const Icon(
                  Icons.notifications_rounded,
                )),
            CircleAvatar()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HistoryCard(),
            SizedBox(
              height: 20,
            ),
            HistoryCard(),
            SizedBox(
              height: 20,
            ),
            HistoryCard(),
            SizedBox(
              height: 20,
            ),
            HistoryCard(),
            SizedBox(
              height: 20,
            ),
            HistoryCard(),
            SizedBox(
              height: 20,
            ),
            HistoryCard(),
          ],
        ),
      ),
    );

    
  }
  
}
