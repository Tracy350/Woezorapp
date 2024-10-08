import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/widget/card_inprogrss.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardInprogrss(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 150, // Specify a height as well
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20), // Add rounded corners if needed
                      child: Image.asset(
                        'assets/images/image.jpeg',
                        fit: BoxFit
                            .cover, // Ensures the image fills the container
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('John Doe',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColorLight),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  '11:30',
                                  style: TextStyle(
                                      color: progressAppointmentTagTextColor),
                                ),
                                Spacer(),
                                Text('Today')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Start',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 150, // Specify a height as well
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20), // Add rounded corners if needed
                      child: Image.asset(
                        'assets/images/image.jpeg',
                        fit: BoxFit
                            .cover, // Ensures the image fills the container
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('John Doe',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColorLight),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'In progress',
                                  style: TextStyle(
                                      color: progressAppointmentTagTextColor),
                                ),
                                Spacer(),
                                Text('11: 22')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
