import 'package:DysScreen/models/language_constants.dart';
import 'package:DysScreen/screens/dyslexiainfoscreens/About_Dyslexia_Section/intro.dart';
import 'package:DysScreen/screens/dyslexiainfoscreens/About_Dyslexia_Section/myths.dart';
import 'package:DysScreen/screens/dyslexiainfoscreens/About_Dyslexia_Section/sign.dart';
import 'package:DysScreen/screens/taketestscreen.dart';
import 'package:DysScreen/widgets/aboutCard_Widget.dart';
import 'package:DysScreen/widgets/language_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Container(
                width: 100,
                height: 660,
                decoration: const BoxDecoration(
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
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // AppLocalizations.of(context)!.welcome,

                          translation(context).welcome,
                          style: TextStyle(
                            fontSize: screenWidth / 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow
                              .fade, // Or TextOverflow.ellipsis as per your preference
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Text(
                            translation(context).app_intro,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: screenWidth / 25,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 190, 190, 190),
                            ),
                            overflow: TextOverflow.fade,
                            softWrap: true, // Enable soft wrapping
                          ),
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
                        translation(context).about_Dyslexia,
                        textAlign: TextAlign.left,
                        // "About Dyslexia",
                        // AppLocalizations.of(context)!.about_Dyslexia,

                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            height: 1.25,
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

                      // /"About Dyslexia"  List View item
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
                                  imageUrl: 'assets/images/about1.jpeg',
                                  title: translation(context).introTitle,
                                  description: translation(context).introText1,
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
                                    imageUrl: 'assets/images/about2.jpg',
                                    title: translation(context)
                                        .commonSignsAndSymptomsTitle,
                                    description: translation(context).openText,
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
                                    imageUrl: 'assets/images/about3.jpg',
                                    title:
                                        translation(context).mythsAndFactsTitle,
                                    description: translation(context).introText,
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
                          // 'Language',
                          translation(context).language,
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
        boxShadow: const [
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
                    maxLines: 1,
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
