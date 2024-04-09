import 'package:dysscreen_app_v1/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

        ///app bar
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            onPressed: () {
              // Add your functionality here when the leading icon is pressed
              // For example, you can navigate to the home screen
              // Get.to(HomeTabScreen());
              // Get.offAll(HomeTabScreen());
              // Navigator.pop(context); // Close the dialog
              // Example: Go back to the previous screen
            },
          ),
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                // Add your functionality here
                takeScreenshot();
              },
              icon: const Icon(
                Icons.camera_alt_outlined,
                // color: Colors.white,
              ),
            ),
          ],
        ),

        ///body
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight * (35 / 100),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/splashscreen.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Container(
                        width: 100,
                        height: 660,
                        decoration: BoxDecoration(
                          color: Color(0x9A1D2428),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            MediaQuery.of(context).size.width *
                                0.08, // 5% of screen width as left padding
                            MediaQuery.of(context).size.height *
                                0.125, // 20% of screen height as top padding
                            MediaQuery.of(context).size.width *
                                0.08, // 5% of screen width as right padding
                            MediaQuery.of(context).size.height *
                                0.02, // 2% of screen height as bottom padding
                          ),
                          child: Column(
                            // mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Test Result',
                                style: TextStyle(
                                  fontSize: screenWidth / 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Text(
                                'Child Name: Muthu',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: screenWidth / 25,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 190, 190, 190),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gender: Male',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: screenWidth / 25,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 190, 190, 190),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Age: 5 Years Old',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: screenWidth / 25,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 190, 190, 190),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    progressIndicator_Widget(),
                    progressIndicator_Widget(),
                    progressIndicator_Widget(),
                    progressIndicator_Widget(),
                    SizedBox(
                      height: 30,
                    ),
                    ///////////////
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
                      child: Center(
                        child: Expanded(
                          child: Container(
                            // height: 100,
                            // width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(79, 194, 192, 187)
                                // color: CustomColor.kmoneycont,
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "We would like to advide that....",
                                    style: TextStyle(
                                      // color: CustomColor.kblack,
                                      fontSize: 14,
                                      // fontWeight: kBoldFontWeight,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "The more you save the more you make money The more you save the more you make money The more you save the more you make money The more you save the more you make money The more you save the more you make money ",
                                    style: TextStyle(
                                      // color: CustomColor.kgrey,
                                      fontSize: 12,
                                      // fontWeight: kBoldFontWeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //"Start Test" Button
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 30),
              child: ElevatedButton(
                  onPressed: () {
                    insertDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(255, 30, 52,
                        117), // Set text color to black (you can adjust as needed)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Set border radius to a circular value
                    ),
                    minimumSize: Size(double.infinity,
                        50), // Set button width to fill available space
                  ),
                  child: const Text(
                    "Email Result",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ],
          // ),
        ));
  }

  void takeScreenshot() {}

  void insertDialog() {}
}

class progressIndicator_Widget extends StatelessWidget {
  const progressIndicator_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        MediaQuery.of(context).size.width *
            0.08, // 5% of screen width as left padding
        MediaQuery.of(context).size.height *
            0.002, // 20% of screen height as top padding
        MediaQuery.of(context).size.width *
            0.08, // 5% of screen width as right padding
        MediaQuery.of(context).size.height *
            0.02, // 2% of screen height as bottom padding
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cat 1",
                style: TextStyle(
                  // color: CustomColor.ktextgrey,
                  fontSize: 12,
                  // fontWeight: kBoldFontWeight,
                ),
              ),
              const Spacer(),
              Text(
                '4/8',
                style: TextStyle(
                  // color: CustomColor.ktextgrey,
                  fontSize: 12,
                  // fontWeight: kBoldFontWeight,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: 0.5, // 70% progress
              backgroundColor: Color.fromARGB(255, 189, 188, 188),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              minHeight: 8.0, // Minimum height of the line
            ),
          ),
        ],
      ),
    );
  }
}
