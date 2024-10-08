import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';
import 'package:woezorap/widget/my_button.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 120,
      child: Row(
        children: [
          Container(
            width: 120,
            height: 150, // Specify a height as well
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Add rounded corners if needed
              child: Image.asset(
                'assets/images/image.jpeg',
                fit: BoxFit.cover, // Ensures the image fills the container
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mary Anne',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10), // Space between text and button
              MyButton(
                text: 'Done',
                color: primaryColorLight,
                textStyle: TextStyle(
                    color: primaryColorDark,
                    fontSize: 20), // Pass textStyle here
                width: MediaQuery.of(context).size.width * 0.6,
                // Button width
              ),
            ],
          ),
        ],
      ),
    );
  }
}
