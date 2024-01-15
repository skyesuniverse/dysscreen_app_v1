import 'package:flutter/material.dart';

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
            padding: EdgeInsetsDirectional.fromSTEB(20, 60, 0, 0),
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
            child: Text(
              "Tips on Dyslexia",
              style: TextStyle(
                fontSize: screenWidth / 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [Text("data")],
            ),
          )
        ],
      ),
    ));
  }
}
