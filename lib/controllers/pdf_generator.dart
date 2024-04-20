import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfLib;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PdfGenerator {
  static Future<void> generateAndSharePdf({
    required String childName,
    required String selectedAge,
    required String selectedGender,
    required List<Map<String, dynamic>> testResults,
    required BuildContext context,
  }) async {
    final pdf = pdfLib.Document();

    // Add header section
    pdf.addPage(
      pdfLib.Page(
        build: (context) {
          return pdfLib.Column(
            crossAxisAlignment: pdfLib.CrossAxisAlignment.start,
            children: [
              pdfLib.Text(
                'Medical Report',
                style: pdfLib.TextStyle(
                    fontSize: 20, fontWeight: pdfLib.FontWeight.bold),
              ),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Date: ${DateTime.now().toString()}'),
              pdfLib.Text('Child Name: $childName'),
              pdfLib.Text('Gender: $selectedGender'),
              pdfLib.Text('Age: $selectedAge years old'),
              pdfLib.SizedBox(height: 20),
              pdfLib.Text('Test Results:',
                  style: pdfLib.TextStyle(
                      fontWeight: pdfLib.FontWeight.bold)), // Change here
              pdfLib.SizedBox(height: 10),
              // Add body section
              for (var result in testResults)
                pdfLib.Column(
                  crossAxisAlignment: pdfLib.CrossAxisAlignment.start,
                  children: [
                    pdfLib.Text(
                      'Category: ${result['categoryName']}',
                      style:
                          pdfLib.TextStyle(fontWeight: pdfLib.FontWeight.bold),
                    ),
                    pdfLib.Text(
                      'Score: ${result['score']} / Total Questions: ${result['totalQuestions']}',
                    ),
                    pdfLib.SizedBox(height: 5),
                  ],
                ),
              pdfLib.SizedBox(height: 20),

              pdfLib.Text('Conclusion:',
                  style: pdfLib.TextStyle(
                      fontWeight: pdfLib.FontWeight.bold)), // Change here
              pdfLib.Text(
                'Based on the test results, further evaluation by a qualified professional is recommended.',
              ),
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File('${output.path}/medical_report.pdf');
    final bytes = await pdf.save();
    await file.writeAsBytes(bytes.toList());

    Share.shareFiles([file.path], text: 'Medical Report');
  }
}
