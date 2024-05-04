import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:dysscreen_app_v1/models/language_constants.dart';
import 'package:dysscreen_app_v1/screens/homescreen.dart';
import 'package:dysscreen_app_v1/screens/mainscreen.dart';
import 'package:dysscreen_app_v1/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dysscreen_app_v1/controllers/pdf_generator.dart';

class ResultScreen extends StatefulWidget {
  final String childName;
  final String selectedAge;
  final String selectedGender;

  const ResultScreen({
    Key? key,
    required this.childName,
    required this.selectedAge,
    required this.selectedGender,
  }) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late double screenHeight, screenWidth;
  late final QuestionController questionController;
  final currentLocale = Get.locale?.languageCode ?? 'en';
  bool _isInitialized = false; // Add a flag to track initialization

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      // Only update category counts if not initialized yet
      questionController = Get.find<QuestionController>();
      // Update category counts when the screen initializes
      questionController.updateCategoryCounts(
        questionController.selectedOptionIndices,
        questionController.questions,
        context, // Pass the context parameter to updateCategoryCounts
      );
      _isInitialized = true; // Mark initialization as completed
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

        ///app bar
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading:
          // IconButton(
          //     icon: Icon(Icons.home_outlined, color: Colors.white),

          //     // Close the current screen and navigate to the home screen
          //     // Navigate to the desired screen
          //     onPressed: () {
          //       Get.deleteAll();

          //       Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
          //         MaterialPageRoute(builder: (context) => MainScreen()),
          //         (route) => false,
          //       );
          //     }
          //     ),
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Get.deleteAll();

                Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MainScreen()),
                  (route) => false,
                );
              },
              icon: const Icon(
                Icons.home_outlined,
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
                              Expanded(
                                child: Text(
                                  // 'Test Result',
                                  translation(context).test_result,
                                  style: TextStyle(
                                    fontSize: screenWidth / 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text.rich(TextSpan(
                                  text: translation(context).child_name,
                                  style: TextStyle(
                                    fontSize: screenWidth / 25,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 190, 190, 190),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " ${widget.childName}",
                                    ),
                                  ])),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: translation(context).gender,
                                        style: TextStyle(
                                          fontSize: screenWidth /
                                              30, // Adjusted font size
                                          fontWeight: FontWeight.normal,
                                          color: Color.fromARGB(
                                              255, 190, 190, 190),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: " ${widget.selectedGender}",
                                          ),
                                        ],
                                      ),
                                      overflow: TextOverflow
                                          .fade, // Adjust overflow behavior if needed
                                      softWrap: true, // Enable soft wrapping
                                    ),
                                  ),
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: translation(context).age,
                                        style: TextStyle(
                                          fontSize: screenWidth /
                                              30, // Adjusted font size
                                          fontWeight: FontWeight.normal,
                                          color: Color.fromARGB(
                                              255, 190, 190, 190),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: " ${widget.selectedAge}",
                                          ),
                                          TextSpan(
                                            text:
                                                translation(context).years_old,
                                          ),
                                        ],
                                      ),
                                      overflow: TextOverflow
                                          .fade, // Adjust overflow behavior if needed
                                      softWrap: true, // Enable soft wrapping
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Dynamic creation of ProgressIndicatorWidgets based on categories
                    for (var category in questionController.categoryCounts.keys)
                      progressIndicator_Widget(
                        categoryName: category,
                        score: questionController
                                .getCategoryCounts(category)?['Yes'] ??
                            0,
                        totalQuestions: questionController
                                .getCategoryCounts(category)?['Total'] ??
                            0,
                      ),
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
                    // Call the generateAndSharePdf method from PdfGenerator
                    _generatePdfAndShare(context);
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
                  child: Text(
                    // 'Email Result',
                    translation(context).share_result,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ],
          // ),
        ));
  }

  Future<void> _generatePdfAndShare(BuildContext context) async {
    try {
      final List<Map<String, dynamic>> testResults = [];

      for (var category in questionController.categoryCounts.keys) {
        final widget = progressIndicator_Widget(
          categoryName: category,
          score: questionController.getCategoryCounts(category)?['Yes'] ?? 0,
          totalQuestions:
              questionController.getCategoryCounts(category)?['Total'] ?? 0,
        );
        final result = widget.getTestResults();
        print(result);
        testResults.add(result);
      }

      await PdfGenerator.generateAndSharePdf(
        childName: widget.childName,
        selectedAge: widget.selectedAge,
        selectedGender: widget.selectedGender,
        testResults: testResults,
        context: context,
      );
    } catch (e) {
      print('Error generating or sharing PDF: $e');
    }
  }

  void insertDialog() {}
}

class progressIndicator_Widget extends StatelessWidget {
  final String categoryName;
  final int score;
  final int totalQuestions;

  const progressIndicator_Widget({
    Key? key,
    required this.categoryName,
    required this.score,
    required this.totalQuestions,
  }) : super(key: key);

  // Method to retrieve test results data
  Map<String, dynamic> getTestResults() {
    return {
      'categoryName': categoryName,
      'score': score,
      'totalQuestions': totalQuestions,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        MediaQuery.of(context).size.width * 0.08,
        MediaQuery.of(context).size.height * 0.002,
        MediaQuery.of(context).size.width * 0.08,
        MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryName, // Display the category name dynamically
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              Text(
                '$score/$totalQuestions', // Display the score and total questions dynamically
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value:
                  score / totalQuestions, // Calculate the progress dynamically
              backgroundColor: Color.fromARGB(255, 189, 188, 188),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              minHeight: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
