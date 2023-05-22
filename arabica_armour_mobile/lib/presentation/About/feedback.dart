import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 481,
        height: 408,
        // width: MediaQuery.of(context).size.width * 0.9, // Adjust the width to 90% of the screen width
        // height: MediaQuery.of(context).size.height * 0.7,
        decoration: BoxDecoration(
          color: Color.fromRGBO(217, 217, 217, 1.0),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(6.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment
                      .bottomLeft, // Aligns the text to the top left corner
                  child: Text(
                    "Give Us Your Feedback",
                    // style: TextStyle(
                    //   fontSize: 23,
                    //   fontFamily: 'Advent Pro',
                    //   fontWeight: FontWeight.bold,
                    // ),
                    style: GoogleFonts.adventPro(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(
                      217, 217, 217, 1.0), // Customize the divider color
                  thickness: 1.0, // Customize the divider thickness
                ),
                Align(
                  alignment: Alignment
                      .topLeft, // Aligns the text to the top left corner
                  child: Text(
                    "Please enter your comments here:",
                    style: GoogleFonts.average(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Enter your comments",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "If you would like us to respond to you, please enter your email address:",
                  style: GoogleFonts.average(
                      fontSize: 16,
                    ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle submit button press
                  },
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(133, 40),
                    primary: Color.fromRGBO(9, 120, 52, 1.0),
                    // Set the background color
                    textStyle: GoogleFonts.average(
                      fontSize: 16,
                    ), // Set the text style
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(17), // Set the button shape
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 12, horizontal: 18), // Set the button padding
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
