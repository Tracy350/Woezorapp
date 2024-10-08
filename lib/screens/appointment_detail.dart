import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/widget/my_button.dart';

class AppointmentDetail extends StatelessWidget {
  const AppointmentDetail({super.key});

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
              text: 'Active',
              textStyle:
                  TextStyle(color: activeAppointmentTagTextColor, fontSize: 25),
              color: activeAppointmentTagBackground,
              width: MediaQuery.of(context).size.width,
              height: 70,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      MyButton(
                        text: 'Reschedule',
                        color: primaryColorLight,
                        textStyle:
                            TextStyle(color: primaryColorDark, fontSize: 20),
                        width: 200,
                        height: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'Reschedule',
                        color: reportedAppointmentTabBackground,
                        textStyle: TextStyle(
                            color: reportedAppointmentTabTextColor,
                            fontSize: 20),
                        width: 200,
                        height: 80,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 180,
                    decoration: BoxDecoration(
                      color:
                          primaryColor, // Moved the color to the decoration for the curve to apply
                      borderRadius: BorderRadius.circular(10), // Curved corners
                    ),
                    height: 180,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            'Start',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
