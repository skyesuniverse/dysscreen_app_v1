import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/intro.dart';
import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/myths.dart';
import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/sign.dart';
import 'package:flutter/material.dart';
import 'package:dysscreen_app_v1/widgets/aboutCard_Widget.dart';

void main() => runApp(const AboutScreen());

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String maintitle = 'Test';
  late double screenHeight, screenWidth;

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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 60, 0, 15),
            child: Text(
              "About Dyslexia",
              style: TextStyle(
                fontSize: screenWidth / 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          //container for list view
          AspectRatio(
            aspectRatio: 16 / 10,
            child: Container(
              // width: double.infinity,
              // height: screenHeight / 2.7,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  ),

              ///"About Dyslexia"  List View item
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
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      IntroOfDyslexiaScreen()));
                        },
                        child: AboutCard(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRURjumQMmLb5ybNldAsJhRD_QdkETjksSVzw&usqp=CAU',
                          title: 'Introduction of Dyslexia',
                          description:
                              'Dyslexia is a type of specific learning difficulty (SLD) in which the person has difficulties with language and words. The term dyslexia, although still used by some, is generally felt to be too narrow and SLD is often used to describe these learning difficulties.',
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                        )),

                    SizedBox(width: screenWidth * 0.02),

                    ////card 2
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignAndSymtoms()));
                        },
                        child: AboutCard(
                            imageUrl:
                                'https://www.readabilitytutor.com/wp-content/uploads/2022/11/How-AI-can-Support-Students-with-Dyslexia.jpg',
                            title: 'Common Signs and Symptoms',
                            description:
                                'Some of the symptoms of dyslexia or SLD in a preschooler could include...',
                            screenWidth: screenWidth,
                            screenHeight: screenHeight)),

                    SizedBox(width: screenWidth * 0.02),

                    ////card 3
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MythsAndFactScreen()));
                        },
                        child: AboutCard(
                            imageUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/3/3d/Dyslexia.jpg',
                            title: 'Myths and Facts about Dyslexia',
                            description:
                                'Let\'s debunk seven common myths surrounding dyslexia and help pave the way for a more inclusive future.',
                            screenWidth: screenWidth,
                            screenHeight: screenHeight)),
                  ]
                  // .divide(SizedBox(width: 12)),
                  ),
            ),
          ),

          //Tips on Dyslexia Section
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 13, 0, 15),
            child: Text(
              "Tips on Dyslexia",
              style: TextStyle(
                fontSize: screenWidth / 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              //card 1 for Tips
              cardForTips(
                  context,
                  'Tips for Dyslexia',
                  'Supporting Individuals at Home, Preschool, and Primary School',
                  'https://website-nessycdn.com/darkroom/1664/8ab33eeb84e92e50e9404d47dad73960:db0a460c62f888c712a019cbdb99abfb/ud-signs-of-dyslexia-preschool-genetic.jpg',
                  screenWidth),

              //card 2 for Tips
              cardForTips(
                  context,
                  'Diagnosis and Treatment',
                  'Diagnosis and Treatment of Dyslexia: Understanding and Supporting Individuals',
                  'https://thumbs.dreamstime.com/z/dyslexic-boy-book-child-affected-dyslexia-reading-digital-illustration-87517954.jpg',
                  screenWidth),

              //card 3 for Tips
              cardForTips(
                  context,
                  'FAQs',
                  'Identifying Dyslexia Signs in Primary School...',
                  'https://img1.wsimg.com/isteam/ip/5b541589-b200-4e1c-b9a8-96d7c1a19061/Screenshot%202023-04-28%20at%204.19.50%20PM.png',
                  screenWidth),

              //card 4 for Tips
              cardForTips(
                  context,
                  'Resources and Support',
                  'Comprehensive List of Dyslexia Organizations: Malaysia and International',
                  'https://clipground.com/images/organization-clipart-2.jpg',
                  screenWidth),
            ],
          )
        ],
      ),
    ));
  }
}

Widget cardForTips(BuildContext context, String title, String description,
    String imageUrl, screenWidth) {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
    child: Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x520E151B),
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        // fontSize: screenWidth / 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: screenWidth / 30,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
