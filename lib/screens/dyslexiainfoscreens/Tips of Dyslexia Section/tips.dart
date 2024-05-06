import 'package:dysscreen_app_v1/models/language_constants.dart';
import 'package:dysscreen_app_v1/widgets/bullet_widget.dart';
import 'package:flutter/material.dart';

class TipsForDyslexia extends StatefulWidget {
  const TipsForDyslexia({super.key});

  @override
  State<TipsForDyslexia> createState() => _TipsForDyslexiaState();
}

class _TipsForDyslexiaState extends State<TipsForDyslexia> {
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          // 'About Dyslexia',
          translation(context).about_Dyslexia,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 5, 24, 24),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        // "Tips for Dyslexia: Supporting Individuals at Home, Preschool, and Primary School",
                        translation(context).tips_for_dyslexia,
                        style: TextStyle(
                          fontSize: screenWidth / 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                      child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/51a615dbe4b0643b1caad822/1529683231868-WE53BI8MPYTCGRE13HFS/helpful+tips.jpg', // Replace with your image URL
                        width: screenWidth, // Adjust width as needed
                        height: 200, // Adjust height as needed
                        fit: BoxFit.cover, // Adjust BoxFit as needed
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                    //   child: Text(
                    //     // 'Dyslexia symptoms might be difficult to detect before a child begins school, but several early warning signs might indicate a problem. When a child reaches school age, the teacher may be the first to detect an issue. The severity of the issue varies, but it usually becomes obvious when the child begins to learn to read.',
                    //     translation(context).question,
                    //     style: TextStyle(
                    //       fontSize: screenWidth / 25,
                    //       fontWeight: FontWeight.normal,
                    //       color: Color.fromARGB(255, 22, 22, 22),
                    //     ),
                    //     textAlign: TextAlign.justify,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //////////// Tips at Home section
                        Text(
                          // 'Tips for Dyslexia at Home:',
                          translation(context).tips_at_home,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildTip(
                                  translation(context).home1,
                                  [
                                    translation(context).home1_1,
                                    translation(context).home1_2,
                                  ],
                                  screenWidth),
                              buildTip(
                                  translation(context).home2,
                                  [
                                    translation(context).home2_1,
                                    translation(context).home2_1,
                                  ],
                                  screenWidth),
                              buildTip(
                                  translation(context).home3,
                                  [
                                    translation(context).home3_1,
                                    translation(context).home3_1,
                                  ],
                                  screenWidth),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),

                        //////////// Tips at Preschool section
                        Text(
                          // 'Tips for Dyslexia at Preschool:',
                          translation(context).tips_at_preschool,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildTip(
                                  translation(context).preschool1,
                                  [
                                    translation(context).preschool1_1,
                                    translation(context).preschool1_2,
                                  ],
                                  screenWidth),
                              buildTip(
                                  translation(context).preschool2,
                                  [
                                    translation(context).preschool2_1,
                                    translation(context).preschool2_2,
                                  ],
                                  screenWidth),
                              buildTip(
                                  translation(context).preschool3,
                                  [
                                    translation(context).preschool3_1,
                                    translation(context).preschool3_2,
                                  ],
                                  screenWidth),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),

                        //////////// Tips at Primary School
                        Text(
                          // 'Tips for Dyslexia at Primary School:',
                          translation(context).tips_at_primary_school,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildTip(
                                  translation(context).primary1,
                                  [
                                    translation(context).primary1_1,
                                    translation(context).primary1_2,
                                  ],
                                  screenWidth),
                              buildTip(
                                  translation(context).primary2,
                                  [
                                    translation(context).primary2_1,
                                    translation(context).primary2_2,
                                  ],
                                  screenWidth),
                              buildTip(
                                  translation(context).primary3,
                                  [
                                    translation(context).primary3_1,
                                    translation(context).primary3_2,
                                  ],
                                  screenWidth),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

Widget buildTip(String title, List<String> tips, double screenWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 1),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: tips.map((tip) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: BulletList(['$tip'], screenWidth),
          );
        }).toList(),
      ),
      SizedBox(height: 10),
    ],
  );
}
