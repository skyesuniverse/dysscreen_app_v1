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

    // Get current locale
    Locale locale = Localizations.localeOf(context);

    // Define translations
    String title = (locale.languageCode == 'ms')
        ? 'Penilaian dan Ujian Saringan Disleksia'
        : 'Dyslexia Assessment and Screening Test';
    String date = (locale.languageCode == 'ms') ? 'Tarikh: ' : 'Date: ';
    String child_Name =
        (locale.languageCode == 'ms') ? 'Nama Anak: ' : 'Child Name';
    String gender = (locale.languageCode == 'ms') ? 'Jantina: ' : 'Gender: ';
    String age = (locale.languageCode == 'ms') ? 'Umur:' : 'Age: ';
    String years_old = (locale.languageCode == 'ms') ? 'Tahun' : 'Years Old';
    String testResultsLabel =
        (locale.languageCode == 'ms') ? 'Keputusan Ujian:' : 'Test Results:';
    String categoryNameLabel =
        (locale.languageCode == 'ms') ? 'Kategori:' : 'Category:';
    String scoreLabel = (locale.languageCode == 'ms') ? 'Markah:' : 'Score:';
    String totalQuestionsLabel =
        (locale.languageCode == 'ms') ? 'Jumlah Soalan:' : 'Total Questions:';
    // String conclusionLabel =
    //     (locale.languageCode == 'ms') ? 'Kesimpulan:' : 'Conclusion:';

    // Add header section
    pdf.addPage(
      pdfLib.Page(
        build: (context) {
          return pdfLib.Column(
            crossAxisAlignment: pdfLib.CrossAxisAlignment.start,
            children: [
              pdfLib.Text(
                title,
                style: pdfLib.TextStyle(
                    fontSize: 20, fontWeight: pdfLib.FontWeight.bold),
              ),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('$date${DateTime.now().toString()}'),
              pdfLib.Text('$child_Name $childName'),
              pdfLib.Text('$gender $selectedGender'),
              pdfLib.Text('$age $selectedAge $years_old'),
              pdfLib.SizedBox(height: 20),
              pdfLib.Text(
                testResultsLabel,
                style: pdfLib.TextStyle(
                  fontWeight: pdfLib.FontWeight.bold,
                  decoration: pdfLib.TextDecoration.underline,
                ),
              ),

              pdfLib.SizedBox(height: 10),
              // Add body section
              for (var result in testResults)
                pdfLib.Column(
                  crossAxisAlignment: pdfLib.CrossAxisAlignment.start,
                  children: [
                    pdfLib.Text(
                      '$categoryNameLabel ${result['categoryName']}',
                      style:
                          pdfLib.TextStyle(fontWeight: pdfLib.FontWeight.bold),
                    ),
                    pdfLib.Text(
                      '$scoreLabel ${result['score']} / $totalQuestionsLabel ${result['totalQuestions']}',
                    ),
                    pdfLib.SizedBox(height: 5),
                  ],
                ),
              pdfLib.SizedBox(height: 20),
              // pdfLib.Text(
              //   conclusionLabel,
              //   style: pdfLib.TextStyle(fontWeight: pdfLib.FontWeight.bold),
              // ),
              // pdfLib.Text(
              //   (locale.languageCode == 'ms')
              //       ? 'Berdasarkan keputusan ujian, disarankan untuk melakukan penilaian lanjut oleh seorang profesional yang berkelayakan.'
              //       : 'Based on the test results, further evaluation by a qualified professional is recommended.',
              // ),
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File('${output.path}/test_result.pdf');
    final bytes = await pdf.save();
    await file.writeAsBytes(bytes.toList());

    Share.shareFiles([file.path],
        text: (locale.languageCode == 'ms')
            ? 'Keputusan Ujian Penilaian dan Skrin Disleksia'
            : 'Dyslexia Assessment and Screening Test Result');
  }
}
