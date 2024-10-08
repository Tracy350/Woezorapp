import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 180,
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
                    Text('example@gmail.com'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: primaryColorLight,
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Edit',
                              style: TextStyle(
                                  color: primaryColorDark, fontSize: 20),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.edit,
                              color: primaryColorDark,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text('Change password'),
            ),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('Change email'),
            ),
            
          ],
        ),
      ),
    );
  }
}
