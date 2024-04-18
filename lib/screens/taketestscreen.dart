import 'package:dysscreen_app_v1/models/language_constants.dart';
import 'package:dysscreen_app_v1/screens/Test_Section/testquestionscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const TakeTestScreen());

class TakeTestScreen extends StatefulWidget {
  const TakeTestScreen({super.key});

  @override
  State<TakeTestScreen> createState() => _TakeTestScreenState();
}

class _TakeTestScreenState extends State<TakeTestScreen> {
  String maintitle = 'Test';
  final _formKey = GlobalKey<FormState>();
  late double screenHeight, screenWidth;

  // String selectedGender = "Gender *";
  //   String selectedAge = "Age *";

  // Update the variables for selected gender and age to use the translation keys
  // String selectedGender = "Gender *"; // Default to the translation key
  // String selectedAge = "Age *"; // Default to the translation key

  // List<String> genderlist = [
  //   "Gender *",
  //   "Male",
  //   "Female",
  // ];

  // List<String> agelist = [
  //   "Age *",
  //   "4 - 6",
  //   "7 - 9",
  // ];

  List<String> genderList = [];
  List<String> ageList = [];

  String childName = ''; // Add this variable to store the child's name

  final TextEditingController _childnameEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    print('Test');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    // Initialize the dropdown lists here, before the build method
    genderList = [
      translation(context).gender_placeholder,
      translation(context).gender_male,
      translation(context).gender_female,
    ];

    ageList = [
      translation(context).age_placeholder,
      '4 - 6',
      '7 - 9',
    ];

    // Initialize selectedGender and selectedAge with the translation keys
    String selectedGender = translation(context).gender_placeholder;
    String selectedAge = translation(context).age_placeholder;

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/splashscreen.png',
          ).image,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0x9A1D2428),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      // "Dyslexia Assessment and Screening Test",
                      translation(context).dyslexia_assessment_screen_title,
                      style: TextStyle(
                        fontSize: screenWidth / 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                    child: Text(
                      // 'This test is designed to provide valuable insights into your child\'s reading and writing abilities, helping to identify potential signs of dyslexia at an early stage.\n\nThroughout the test, instructions and questions will be given, your child will encounter engaging activities that assess key skills such as reading comprehension, phonological awareness, and writing proficiency. \n\nThe assessment typically takes 10-15 minutes to complete, ensuring a thorough evaluation without causing fatigue for the child.',
                      translation(context).assessment_description,
                      style: TextStyle(
                        fontSize: screenWidth / 30,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 190, 190, 190),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      // '**Please enter your child\'s details below to begin the assessment.',
                      translation(context).enter_child_details_message,
                      style: const TextStyle(
                        // fontSize: screenWidth / 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic, // Set text to italic

                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          textInputAction: TextInputAction.next,
                          validator: (val) => val!.isEmpty
                              ? translation(context)
                                  .name_validation_error_message
                              : null,
                          onFieldSubmitted: (v) {},
                          // maxLines: 2,
                          controller: _childnameEditingController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            // labelText: 'Child Name *',
                            labelText: translation(context).child_name_label,
                            alignLabelWithHint: true,
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors
                                    .white, // Set the original line color to white
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              //Drop down for Gender
                              child: DropdownButtonFormField(
                                iconEnabledColor: Colors.white,
                                dropdownColor:
                                    const Color.fromARGB(255, 29, 64, 97),
                                hint: const Text(
                                  'Select',
                                ),
                                itemHeight: 60,
                                value: selectedGender,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value ==
                                          translation(context)
                                              .gender_placeholder) {
                                    return translation(context)
                                        .gender_validation_error_message;
                                  }
                                  return null;
                                },
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedGender = newValue.toString();
                                  });
                                },
                                items: genderList.map((selectedGender) {
                                  return DropdownMenuItem(
                                    value: selectedGender,
                                    child: Text(
                                      selectedGender,
                                      style: const TextStyle(
                                        // fontSize: screenWidth / 32,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                decoration: const InputDecoration(
                                  //labelText: 'Gender', // Set label text
                                  labelStyle: TextStyle(
                                    color: Colors
                                        .white, // Set label text color to white
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors
                                          .white, // Set border color to white
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),

                            //Dropdown for Age
                            Expanded(
                              child: DropdownButtonFormField(
                                iconEnabledColor: Colors.white,
                                dropdownColor:
                                    const Color.fromARGB(255, 29, 64, 97),
                                // Color.fromARGB(255, 21, 46, 70),
                                itemHeight: 60,
                                value: selectedAge,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value ==
                                          translation(context)
                                              .gender_placeholder) {
                                    return translation(context)
                                        .age_validation_error_message;
                                  }
                                  return null;
                                },
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedAge = newValue.toString();
                                  });
                                },
                                items: ageList.map((selectedAge) {
                                  return DropdownMenuItem(
                                    value: selectedAge,
                                    child: Text(
                                      selectedAge,
                                      style: const TextStyle(
                                        // fontSize: screenWidth / 32,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                decoration: const InputDecoration(
                                  //labelText: 'Gender', // Set label text
                                  labelStyle: TextStyle(
                                    color: Colors
                                        .white, // Set label text color to white
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors
                                          .white, // Set border color to white
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.025,
                        ),

                        //"Start Test" Button
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 0),
                          child: ElevatedButton(
                              onPressed: () {
                                insertDialog(selectedGender, selectedAge);
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors
                                    .white, // Set text color to black (you can adjust as needed)
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set border radius to a circular value
                                ),
                                minimumSize: const Size(double.infinity,
                                    50), // Set button width to fill available space
                              ),
                              child: Text(
                                // "Start Test",
                                translation(context).start_test_button,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    ));
  }

  void insertDialog(String selectedAge, String selectedGender) {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          // "Please complete the form",
          translation(context).form_validation_error_message,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white70,
      ));
      return;
    }
    setState(() {
      childName = _childnameEditingController.text; // Store child's name
      selectedAge = selectedAge; // Store child's name
      selectedGender = selectedGender; // Store child's name
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (content) => TestQuestionScreen(
            childName: childName, // Pass child's name to the test screen
            selectedAge: selectedAge, // Pass selected age to the test screen
            selectedGender:
                selectedGender, // Pass selected age to the test screen
          ),
        ),
      );
    });
    print(childName);
  }
}
