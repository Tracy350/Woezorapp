import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/widget/my_button.dart';

class AppointmentDetailsCancelled extends StatelessWidget {
  const AppointmentDetailsCancelled({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Appointment',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 150,
                  width: 200,
                  child: Image.asset(
                    'assets/images/man.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John \n Amegashie',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: primaryColorLight,
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.phone,
                        color: primaryColorDark,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '11:30 am',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
            ),
            Text(
              'Today',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              text: 'Cancelled',
              textStyle: TextStyle(
                  color: const Color.fromARGB(255, 74, 74, 74), fontSize: 25),
              color: const Color.fromARGB(255, 212, 212, 212),
              width: MediaQuery.of(context).size.width,
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
