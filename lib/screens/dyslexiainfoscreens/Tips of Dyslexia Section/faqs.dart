import 'package:dysscreen_app_v1/models/Faqs_QnA.dart';
import 'package:flutter/material.dart';

class FaQs extends StatefulWidget {
  const FaQs({super.key});

  @override
  State<FaQs> createState() => _FaQsState();
}

class _FaQsState extends State<FaQs> {
  late double screenHeight, screenWidth;
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
            color: Colors.black, // 3
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
                          "Frequently Asked Questions About Dyslexia",
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
                          'https://simplyamazingtraining.co.uk/wp-content/uploads/2019/11/FAQs.jpg', // Replace with your image URL
                          width: screenWidth, // Adjust width as needed
                          height: 200, // Adjust height as needed
                          fit: BoxFit.cover, // Adjust BoxFit as needed
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: questionsAndAns.map((qna) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                child: Card(
                                  child: ExpansionTile(
                                    maintainState: true,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    collapsedShape:
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                    title: Text(qna.question),
                                    // subtitle: Text('Trailing expansion arrow icon'),
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(16, 5, 16, 10),
                                        child: Text(
                                          qna.answer,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
}
