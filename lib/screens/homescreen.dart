import 'package:dysscreen_app_v1/screens/dyslexiainfoscreens/introofdyslexia.dart';
import 'package:dysscreen_app_v1/screens/taketestscreen.dart';
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
    //double textScaleFactor = MediaQuery.of(context).size.aspectRatio;
    // if (isiOS) {
    //   SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(
    //       statusBarBrightness: Theme.of(context).brightness,
    //       systemStatusBarContrastEnforced: true,
    //     ),
    //   );
    // }

    return GestureDetector(
      // onTap: () => _model.unfocusNode.canRequestFocus
      //     ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      //     : FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 400,
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
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
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
                    padding: EdgeInsetsDirectional.fromSTEB(16, 170, 16, 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 8),
                          child: Text(
                            'Welcome to DysScreen',
                            style: TextStyle(
                              fontSize: screenWidth / 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Text(
                            'DysScreen,a user-friendly app crafted to assist parents and educators in the crucial task of assessing and screening for dyslexia in children.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: screenWidth / 32,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 190, 190, 190),
                            ),
                          ),
                        ),
                        // Row(
                        //   mainAxisSize: MainAxisSize.max,
                        //   children: [
                        //     Padding(
                        //       padding:
                        //           EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                        //       child: InkWell(
                        //         onTap: () async {
                        //           Navigator.push(
                        //               context,
                        //               MaterialPageRoute(
                        //                   builder: (content) =>
                        //                       const TakeTestScreen()));
                        //         },
                        //         child: Text(
                        //           'Take the Test',
                        //           style: TextStyle(
                        //             fontSize: screenWidth / 33,
                        //             fontWeight: FontWeight.w500,
                        //             color: Colors.white,
                        //             decoration: TextDecoration.underline,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding:
                        //           EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        //       child: InkWell(
                        //         splashColor: Colors.transparent,
                        //         focusColor: Colors.transparent,
                        //         hoverColor: Colors.transparent,
                        //         highlightColor: Color.fromARGB(0, 212, 43, 43),
                        //         onTap: () async {
                        //           Navigator.pushReplacement(
                        //               context,
                        //               MaterialPageRoute(
                        //                   builder: (content) =>
                        //                       const TakeTestScreen()));
                        //         },
                        //         child: Icon(
                        //           Icons.chevron_right_rounded,
                        //           color: Colors.white,
                        //           size: screenWidth / 16,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              ////About Dyslexia Section
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Text(
                  'About Dyslexia',
                  style: TextStyle(
                    fontSize: screenWidth / 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 23, 23, 23),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: screenHeight / 2.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),

                ///List View item
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

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      IntroOfDyslexiaScreen()));
                        },
                        child: Padding(
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
                                Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    // color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRURjumQMmLb5ybNldAsJhRD_QdkETjksSVzw&usqp=CAU',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height:
                                        60, // Set the fixed height for the text container
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 5, 10, 5),
                                            child: Text(
                                              'Introduction of Dyslexia',
                                              style: TextStyle(
                                                // fontSize: screenWidth / 33,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                              maxLines:
                                                  1, // Maximum lines to display
                                              overflow: TextOverflow
                                                  .ellipsis, // Show ellipsis when overflow
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Text(
                                              'Dyslexia is a type of specific learning difficulty (SLD) in which the person has difficulties with language and words. The term dyslexia, although still used by some, is generally felt to be too narrow and SLD is often used to describe these learning difficulties. ',
                                              style: TextStyle(
                                                fontSize: screenWidth / 32,
                                                color: Colors.black54,
                                              ),
                                              maxLines:
                                                  2, // Maximum lines to display
                                              overflow: TextOverflow
                                                  .ellipsis, // Show ellipsis when overflow
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
                      ),

                      SizedBox(width: screenWidth * 0.02),

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
                              Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                  // color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjVVgAnRYY4ybzZvgGdtZlRucvcBoCfh9efWL1vxk2UW2vlDYZI3paW1k0Io_y0v_i9VQ&usqp=CAU',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      60, // Set the fixed height for the text container
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 5, 10, 5),
                                          child: Text(
                                            'Common Signs and Symptoms',
                                            style: TextStyle(
                                              // fontSize: screenWidth / 33,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                            maxLines:
                                                1, // Maximum lines to display
                                            overflow: TextOverflow
                                                .ellipsis, // Show ellipsis when overflow
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            'Some of the symptoms of dyslexia or SLD in a preschooler could include...',
                                            style: TextStyle(
                                              fontSize: screenWidth / 32,
                                              color: Colors.black54,
                                            ),
                                            maxLines:
                                                2, // Maximum lines to display
                                            overflow: TextOverflow
                                                .ellipsis, // Show ellipsis when overflow
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

                      SizedBox(width: screenWidth * 0.02),

                      ////card 3
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
                              Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                  // color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwJz94Im5Dz27eF_8r6a3JEUQ5xsNz8YqfTZN5AqT1T3DYsg3MbcYGG5lOOL1D5jgXXh0&usqp=CAU',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      60, // Set the fixed height for the text container
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 5, 10, 5),
                                          child: Text(
                                            'Myths and Facts about Dyslexia',
                                            style: TextStyle(
                                              // fontSize: screenWidth / 33,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                            maxLines:
                                                1, // Maximum lines to display
                                            overflow: TextOverflow
                                                .ellipsis, // Show ellipsis when overflow
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            'Let\'s debunk seven common myths surrounding dyslexia and help pave the way for a more inclusive future',
                                            style: TextStyle(
                                              fontSize: screenWidth / 32,
                                              color: Colors.black54,
                                            ),
                                            maxLines:
                                                2, // Maximum lines to display
                                            overflow: TextOverflow
                                                .ellipsis, // Show ellipsis when overflow
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
                    ]
                    // .divide(SizedBox(width: 12)),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
