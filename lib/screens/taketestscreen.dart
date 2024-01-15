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
  String selectedGender = "Gender";
  List<String> genderlist = [
    "Gender",
    "Male",
    "Female",
  ];

  String selectedAge = "Age";
  List<String> agelist = [
    "Age",
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
                    'Please enter your child\'s details below to begin the assessment.',
                    style: TextStyle(
                      fontSize: screenWidth / 32,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            controller: _childnameEditingController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              labelText: 'Child Name',
                              alignLabelWithHint: true,
                              labelStyle: TextStyle(color: Colors.white),
                              // focusedBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(width: 2.0),
                              // ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors
                                      .white, // Set the original line color to white
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: DropdownButtonFormField(
                                  itemHeight: 60,
                                  value: selectedGender,
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
                                          color: Colors.white,
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
                                            .white, // Set border color to white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 9),

                              //Dropdown for Age
                              Expanded(
                                child: DropdownButtonFormField(
                                  itemHeight: 60,
                                  value: selectedAge,
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
                                          color: Colors.white,
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
                                            .white, // Set border color to white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //"Start Test" Button
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
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
    ));
  }

  void insertDialog() {}
}
