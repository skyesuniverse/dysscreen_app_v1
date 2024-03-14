import 'package:dysscreen_app_v1/screens/testquestionscreen.dart';
import 'package:flutter/material.dart';

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
  String selectedGender = "*Gender";
  List<String> genderlist = [
    "*Gender",
    "Male",
    "Female",
  ];

  String selectedAge = "*Age";
  List<String> agelist = [
    "*Age",
    "4 - 6",
    "7 - 9",
  ];

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
        decoration: BoxDecoration(
          color: Color(0x9A1D2428),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 60, 24, 24),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        "Dyslexia Assessment and Screening Test",
                        style: TextStyle(
                          fontSize: screenWidth / 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                      child: Text(
                        'This test is designed to provide valuable insights into your child\'s reading and writing abilities, helping to identify potential signs of dyslexia at an early stage.\n\nThroughout the test, instructions and questions will be given, your child will encounter engaging activities that assess key skills such as reading comprehension, phonological awareness, and writing proficiency. \n\nThe assessment typically takes 10-15 minutes to complete, ensuring a thorough evaluation without causing fatigue for the child.',
                        style: TextStyle(
                          fontSize: screenWidth / 32,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 190, 190, 190),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Text(
                      '**Please enter your child\'s details below to begin the assessment.',
                      style: TextStyle(
                        // fontSize: screenWidth / 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic, // Set text to italic

                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.white70),
                            textInputAction: TextInputAction.next,
                            validator: (val) => val!.isEmpty
                                ? "Please enter a valid name"
                                : null,
                            onFieldSubmitted: (v) {},
                            // maxLines: 2,
                            controller: _childnameEditingController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              labelText: '*Child Name',
                              alignLabelWithHint: true,
                              labelStyle: TextStyle(color: Colors.white70),
                              // focusedBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(width: 2.0),
                              // ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors
                                      .white70, // Set the original line color to white
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                //Drop down for Gender
                                child: DropdownButtonFormField(
                                  iconEnabledColor: Colors.white70,
                                  dropdownColor:
                                      Color.fromARGB(255, 29, 64, 97),
                                  hint: Text(
                                    'Select',
                                  ),
                                  itemHeight: 60,
                                  value: selectedGender,
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value == "*Gender") {
                                      return 'Please select a gender';
                                    }
                                    return null;
                                  },
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedGender = newValue.toString();
                                    });
                                  },
                                  items: genderlist.map((selectedGender) {
                                    return DropdownMenuItem(
                                      value: selectedGender,
                                      child: Text(
                                        selectedGender,
                                        style: TextStyle(
                                          // fontSize: screenWidth / 32,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  decoration: InputDecoration(
                                    //labelText: 'Gender', // Set label text
                                    labelStyle: TextStyle(
                                      color: Colors
                                          .white, // Set label text color to white
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors
                                            .white70, // Set border color to white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),

                              //Dropdown for Age
                              Expanded(
                                child: DropdownButtonFormField(
                                  iconEnabledColor: Colors.white70,
                                  dropdownColor:
                                      Color.fromARGB(255, 29, 64, 97),
                                  // Color.fromARGB(255, 21, 46, 70),
                                  itemHeight: 60,
                                  value: selectedAge,
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value == "*Age") {
                                      return 'Please select the age';
                                    }
                                    return null;
                                  },
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedAge = newValue.toString();
                                    });
                                  },
                                  items: agelist.map((selectedAge) {
                                    return DropdownMenuItem(
                                      value: selectedAge,
                                      child: Text(
                                        selectedAge,
                                        style: TextStyle(
                                          // fontSize: screenWidth / 32,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  decoration: InputDecoration(
                                    //labelText: 'Gender', // Set label text
                                    labelStyle: TextStyle(
                                      color: Colors
                                          .white, // Set label text color to white
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors
                                            .white70, // Set border color to white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),

                          //"Start Test" Button
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: ElevatedButton(
                                onPressed: () {
                                  insertDialog();
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors
                                      .white, // Set text color to black (you can adjust as needed)
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0), // Set border radius to a circular value
                                  ),
                                  minimumSize: Size(double.infinity,
                                      50), // Set button width to fill available space
                                ),
                                child: const Text("Start Test")),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    ));
  }

  void insertDialog() {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Please complete the form",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white70,
      ));
      return;
    }

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (content) => TestQuestionScreen()));
  }

  // showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(10.0))),
  //       title: const Text(
  //         "Update your catch?",
  //         style: TextStyle(),
  //       ),
  //       content: const Text("Are you sure?", style: TextStyle()),
  //       actions: <Widget>[
  //         TextButton(
  //           child: const Text(
  //             "Yes",
  //             style: TextStyle(),
  //           ),
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //             // updateCatch();
  //             //registerUser();
  //           },
  //         ),
  //         TextButton(
  //           child: const Text(
  //             "No",
  //             style: TextStyle(),
  //           ),
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //         ),
  //       ],
  //     );
  //   },
  // );
}
