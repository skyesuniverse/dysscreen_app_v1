import 'package:flutter/material.dart';

void main() => runApp(const AboutScreen());

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
        body: SingleChildScrollView(
            child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 24),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    "About Dyslexia",
                    style: TextStyle(
                      fontSize: screenWidth / 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight / 2.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),

                  ///List View item
                  child: ListView(
                      padding: EdgeInsets.fromLTRB(
                        16,
                        0,
                        16,
                        0,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        ////card 1
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                          child: Container(
                            width: 260,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      // color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.network(
                                          'https://picsum.photos/seed/505/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'Hello World Hello World Hello World Hello World Hello World',
                                          // style: FlutterFlowTheme.of(context)
                                          //     .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        ////card 2
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                          child: Container(
                            width: 260,
                            height: 0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.network(
                                          'https://picsum.photos/seed/505/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'Hello World Hello World Hello World Hello World Hello World',
                                          // style: FlutterFlowTheme.of(context)
                                          //     .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        ////card 3
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                          child: Container(
                            width: 260,
                            decoration: BoxDecoration(
                              // color:
                              //     FlutterFlowTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ]
                      // .divide(SizedBox(width: 12)),
                      ),
                ),

                ////About Dyslexia Section
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'About Dyslexia',
                    style: TextStyle(
                      fontSize: screenWidth / 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 23, 23),
                    ),
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
    )));
  }

  void insertDialog() {}
}
