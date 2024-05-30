import 'package:DysScreen/models/ResourceAndSupport.dart';
import 'package:DysScreen/models/language_constants.dart';
import 'package:DysScreen/widgets/bullet_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesAndSupport extends StatefulWidget {
  const ResourcesAndSupport({super.key});

  @override
  State<ResourcesAndSupport> createState() => _ResourcesAndSupportState();
}

class _ResourcesAndSupportState extends State<ResourcesAndSupport> {
  late double screenHeight, screenWidth;
  final List<int> index = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    // Get the current locale
    Locale currentLocale = Localizations.localeOf(context);

    // Determine which language to display based on the locale
    String languageCode = currentLocale.languageCode;

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
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          // "Resources and Support",
                          translation(context).resources_and_Support,
                          style: TextStyle(
                            fontSize: screenWidth / 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: AspectRatio(
                          aspectRatio: 16 / 10,
                          child: Image.asset(
                            // Use Image.asset instead of Image.network
                            "assets/images/resources.jpg", // Use imagePath variable
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          // "Comprehensive List of Dyslexia Organizations: Malaysia and International",
                          translation(context).list_of_Dyslexia_Organizations,
                          style: TextStyle(
                            fontSize: screenWidth / 23,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Malaysia: ",
                          style: TextStyle(
                            fontSize: screenWidth / 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: my_Org.map((myorg) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // BulletList(['$myorg'], screenWidth),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${myorg.id}.',
                                      style: TextStyle(
                                        fontSize: screenWidth / 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          myorg.myOrg_Name,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(19, 10, 10, 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        translation(context).website,
                                        style: TextStyle(
                                          fontSize: screenWidth / 25,
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            launchUrl_MY(myorg.myOrg_WebLink);
                                            print(myorg.myOrg_WebLink);
                                          },
                                          child: Text(
                                            myorg.myOrg_WebLink,
                                            style: TextStyle(
                                              fontSize: screenWidth / 25,
                                              color: Colors.blue,
                                              // decoration:
                                              //     TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 40, child: Divider()),

                      ////////////////Treatment section
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          // "International: ",
                          translation(context).international,
                          style: TextStyle(
                            fontSize: screenWidth / 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: international_Org.map((internationalOrg) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // BulletList(['$myorg'], screenWidth),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${internationalOrg.id}.',
                                      style: TextStyle(
                                        fontSize: screenWidth / 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          internationalOrg
                                              .internationalOrg_Name,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: screenWidth / 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(19, 10, 10, 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        translation(context).website,
                                        style: TextStyle(
                                          fontSize: screenWidth / 25,
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            launchUrl_Inter(internationalOrg
                                                .internationalOrg_WebLink);
                                            print(internationalOrg
                                                .internationalOrg_WebLink);
                                            // final url =
                                            //     Uri.parse(myorg.myOrg_WebLink);
                                            // if (await canLaunchUrl(url)) {
                                            //   await launchUrl(url);
                                            // }
                                          },
                                          child: Text(
                                            internationalOrg
                                                .internationalOrg_WebLink,
                                            style: TextStyle(
                                              fontSize: screenWidth / 25,
                                              color: Colors.blue,
                                              // decoration:
                                              //     TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  // Function to launch URL
  Future<void> launchUrl_MY(String urlString) async {
    if (await canLaunch(urlString)) {
      // Check if the URL can be launched
      await launch(urlString);
    } else {
      throw 'Could not launch $urlString'; // throw could be used to handle erroneous situations
    }
  }

  // Function to launch URL
  Future<void> launchUrl_Inter(String urlString) async {
    if (await canLaunch(urlString)) {
      // Check if the URL can be launched
      await launch(urlString);
    } else {
      throw 'Could not launch $urlString'; // throw could be used to handle erroneous situations
    }
  }
}
