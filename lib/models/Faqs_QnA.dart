import 'package:flutter/material.dart';

class Faqs_QnA {
  final Map<String, dynamic> question, answer;
  //  final Map<String, dynamic> content;

  Faqs_QnA({required this.question, required this.answer});
}

String getContentByLocale(BuildContext context, Map<String, String> content) {
  final currentLocale = Localizations.localeOf(context).languageCode;
  return content[currentLocale] ?? content['en'] ?? '';
}

final List<Faqs_QnA> questionsAndAns = [
  Faqs_QnA(
    question: {
      'en': 'Is dyslexia considered a form of autism?',
      'ms': 'Adakah disleksia dianggap sebagai satu bentuk autisme?',
    },
    answer: {
      'en':
          'No, dyslexia and autism are two different conditions. Neurodevelopmental diseases encompass autism spectrum disorder and particular learning disorders (including dyslexia and the other two categories). But they\'re not the same thing. Someone can have both at the same time, but this does not imply that one causes the other.\n\nSimilarly, dyslexia and attention deficit/hyperactivity disorder (ADHD) are two distinct conditions. ADHD, like autism, is classified as a unique learning condition, and you can have ADHD and dyslexia simultaneously. However, they are independent of each other, thus having both does not imply that one produced the other.',
      'ms':
          'Tidak, disleksia dan autisme adalah dua keadaan yang berbeza. Penyakit neuroperkembangan merangkumi gangguan spektrum autisme dan gangguan pembelajaran tertentu (termasuk disleksia dan dua kategori lain). Tetapi mereka bukan perkara yang sama. Seseorang boleh mengalami kedua-duanya pada masa yang sama, tetapi ini tidak bermakna yang satu menyebabkan yang lain.\n\nDemikian juga, disleksia dan gangguan hiperaktif/defisit perhatian (ADHD) adalah dua keadaan yang berbeza. ADHD, seperti autisme, diklasifikasikan sebagai keadaan pembelajaran yang unik, dan anda boleh mempunyai ADHD dan disleksia pada masa yang sama. Walau bagaimanapun, mereka adalah independen antara satu sama lain, jadi mempunyai kedua-duanya tidak bermakna yang satu menghasilkan yang lain.'
    },
  ),
  Faqs_QnA(
    question: {
      'en': 'What causes dyslexia?',
      'ms': 'Apakah yang menyebabkan disleksia?',
    },
    answer: {
      'en':
          'The specific causes of dyslexia are still unknown, but anatomical and brain imaging studies reveal abnormalities in how a dyslexic person\'s brain develops and functions. Furthermore, most people with dyslexia struggle to distinguish the different speech sounds inside a word and/or learn how letters represent those sounds, which is a major contributor to their reading difficulties. Dyslexia is not caused by a lack of intelligence or want to learn; with the right teaching methods, people with dyslexia can learn successfully.',
      'ms':
          'Penyebab spesifik disleksia masih belum diketahui, tetapi kajian anatomi dan imej otak menunjukkan kelainan dalam bagaimana otak seseorang yang mengalami disleksia berkembang dan berfungsi. Selain itu, kebanyakan orang yang mengalami disleksia menghadapi kesulitan untuk membezakan bunyi pertuturan yang berbeza dalam satu perkataan dan/atau belajar bagaimana huruf-huruf mewakili bunyi-bunyi tersebut, yang merupakan penyumbang utama kepada kesukaran membaca mereka. Disleksia tidak disebabkan oleh kekurangan kecerdasan atau keinginan untuk belajar; dengan kaedah pengajaran yang betul, orang yang mengalami disleksia boleh belajar dengan berjaya.'
    },
  ),
  Faqs_QnA(
    question: {
      'en': 'Does dyslexia increase with age?',
      'ms': 'Adakah disleksia meningkat dengan umur?',
    },
    answer: {
      'en':
          'Dyslexia affects all people differently, but because there is no cure, it often persists until adulthood. However, many patients report that intervention improves their symptoms.',
      'ms':
          'Disleksia memberi kesan kepada semua orang secara berbeza, tetapi kerana tidak ada penawar, ia sering berterusan sehingga dewasa. Walau bagaimanapun, ramai pesakit melaporkan bahawa intervensi dapat meningkatkan gejala mereka.'
    },
  ),
  Faqs_QnA(
    question: {
      'en': 'Can students with dyslexia perform well in school?',
      'ms': 'Adakah pelajar yang mengalami disleksia boleh berjaya di sekolah?',
    },
    answer: {
      'en':
          'Many dyslexic students do extraordinarily well in school. These students are typically very motivated and work really hard. In many cases, individuals were recognized early and given evidence-based therapies and accommodations, such as extra time on examinations, to demonstrate their understanding. Dyslexic students have completed hard programs at prestigious institutions, graduate, and professional schools.',
      'ms':
          'Ramai pelajar yang mengalami disleksia berjaya dengan luar biasa di sekolah. Pelajar-pelajar ini biasanya sangat bermotivasi dan bekerja keras. Dalam banyak kes, individu dikenali pada awalnya dan diberikan terapi berdasarkan bukti serta penginapan, seperti tambahan masa dalam peperiksaan, untuk menunjukkan pemahaman mereka. Pelajar-pelajar yang mengalami disleksia telah menamatkan program yang sukar di institusi-institusi ternama, universiti, dan sekolah profesional.'
    },
  ),
  Faqs_QnA(
    question: {
      'en': 'Can smart people be dyslexic?',
      'ms': 'Adakah orang yang bijak boleh mengalami disleksia?',
    },
    answer: {
      'en':
          'Some of the brightest children struggle with reading. Dyslexia affects all levels of intelligence, including normal, above average, and highly talented. Many gifted individuals at the pinnacle of their professions are dyslexic. People with dyslexia are slow readers, yet they are frequently quick and creative thinkers.',
      'ms':
          'Beberapa kanak-kanak yang paling cerdas berjuang dengan membaca. Disleksia memberi kesan kepada semua peringkat kecerdasan, termasuk normal, di atas purata, dan sangat berbakat. Ramai individu berbakat di puncak profesion mereka adalah disleksia. Orang yang mengalami disleksia adalah pembaca yang lambat, namun mereka sering menjadi pemikir yang pantas dan kreatif.'
    },
  ),
  Faqs_QnA(
    question: {
      'en': 'Can individuals who have dyslexia learn to read?',
      'ms': 'Bolehkah individu yang mengalami disleksia belajar membaca?',
    },
    answer: {
      'en':
          'Yes. Children with dyslexia who receive adequate phonological awareness and phonics training in kindergarten and first grade will have considerably fewer difficulties learning to read at grade level than children who are not recognised or aided until third grade. 74% of children who are poor readers in third grade are poor readers in the 9th grade, many of whom do not receive adequate Structured Literacy training of the necessary intensity or duration. They frequently struggle to read even as adults. Individuals with dyslexia can learn to read, comprehend, and express information more efficiently at any age. According to research, programmes that use Structured Literacy instructional strategies can assist both children and adults learn to read.',
      'ms':
          'Ya. Kanak-kanak yang mengalami disleksia yang menerima kesedaran fonologi yang mencukupi dan latihan fonik di prasekolah dan tahun pertama akan mengalami jauh lebih sedikit kesulitan dalam pembelajaran membaca pada tahap gred berbanding kanak-kanak yang tidak dikenali atau dibantu sehingga tahun ketiga. 74% kanak-kanak yang merupakan pembaca lemah di tahun ketiga adalah pembaca lemah di tahun ke-9, di mana ramai daripadanya tidak menerima latihan Literasi Berstruktur yang mencukupi dari segi intensiti atau tempoh. Mereka sering mengalami kesulitan dalam membaca sehingga dewasa. Individu yang mengalami disleksia boleh belajar membaca, memahami, dan menyatakan maklumat dengan lebih cekap pada usia mana pun. Menurut penyelidikan, program yang menggunakan strategi pengajaran Literasi Berstruktur dapat membantu kanak-kanak dan orang dewasa belajar membaca.'
    },
  ),
  // Add more Faqs_QnA instances here...
];
