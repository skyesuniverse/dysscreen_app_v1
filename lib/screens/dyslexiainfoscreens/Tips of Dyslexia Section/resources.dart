import 'package:dysscreen_app_v1/models/ResourceAndSupport.dart';
import 'package:dysscreen_app_v1/widgets/bullet_widget.dart';
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'About Dyslexia',
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
                          "Resources and Support",
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
                          'https://st4.depositphotos.com/1001201/22004/i/450/depositphotos_220043644-stock-photo-business-people-putting-their-hands.jpg', // Replace with your image URL
                          width: screenWidth, // Adjust width as needed
                          height: 200, // Adjust height as needed
                          fit: BoxFit.cover, // Adjust BoxFit as needed
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Comprehensive List of Dyslexia Organizations: Malaysia and International",
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
                                      Text('Website: '),
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
                          "International: ",
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
                                      Text('Website: '),
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
