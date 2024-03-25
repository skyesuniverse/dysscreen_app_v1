import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/intro.dart';
import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/myths.dart';
import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/sign.dart';
import 'package:dysscreen_app_v1/screens/taketestscreen.dart';
import 'package:dysscreen_app_v1/widgets/aboutCard_Widget.dart';
import 'package:dysscreen_app_v1/widgets/language_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const HomeTabScreen());

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  String maintitle = 'Home';
  late double screenHeight, screenWidth;

  @override
  void initState() {
    super.initState();
    print('Home');
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: null, // Remove the leading icon
        actions: [
          IconButton(
            onPressed: () {
              // Add your functionality here
              selectLanguage();
            },
            icon: const Icon(
              Icons.language_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * (55 / 100),
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
                        0.2, // 20% of screen height as top padding
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
                        'Welcome to DysScreen',
                        style: TextStyle(
                          fontSize: screenWidth / 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Text(
                        'DysScreen, a user-friendly app crafted to assist parents and educators in the crucial task of assessing and screening for dyslexia in children.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: screenWidth / 25,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 190, 190, 190),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ////About Dyslexia Section
            Container(
              width: double.infinity,
              height: screenHeight * (45 / 100),
              // color: Colors.amber,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.03),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.left,
                        "About Dyslexia",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            // height: 1.25,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
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
                                          builder: (context) =>
                                              SignAndSymtoms()));
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
                                          builder: (context) =>
                                              MythsAndFactScreen()));
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
                ],
              ),
            ),

            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(20, 13, 0, 15),
            //   child: Text(
            //     "About Dyslexia",
            //     style: TextStyle(
            //       fontSize: screenWidth / 19,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void selectLanguage() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        //enableDrag: true,
        barrierColor: Colors.black54,
        builder: (context) => DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.2,
            maxChildSize: 0.75,
            expand: false,
            builder: (_, controller) => SizedBox(
                  height: screenHeight * 40 / 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Text(
                          'Language',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  // height: 1.25,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: screenHeight * 0.025,
                        ),
                        Expanded(child: LanguageSelectionBottomSheet()),
                      ],
                    ),
                  ),
                )));
    // return SizedBox(
    //   height: screenHeight * 40 / 100,
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         SizedBox(
    //           height: screenHeight * 0.05,
    //         ),
    //         Text(
    //           'Language',
    //           style: Theme.of(context).textTheme.titleMedium!.copyWith(
    //               fontWeight: FontWeight.bold,
    //               // height: 1.25,
    //               color: Color.fromARGB(255, 0, 0, 0)),
    //         ),
    //         SizedBox(
    //           height: screenHeight * 0.025,
    //         ),
    //         SingleChildScrollView(child: LanguageSelectionBottomSheet()),
    //       ],
    //     ),
    //   ),
    // );
  }
}

Widget buildCard(
    BuildContext context, String title, String description, String imageUrl) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const IntroOfDyslexiaScreen()),
      );
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x33000000),
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
