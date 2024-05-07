import 'package:flutter/material.dart';

class DiagnosticCriteria {
  // final String title;
  // final String description;
  final Map<String, dynamic> title, description;

  DiagnosticCriteria({required this.title, required this.description});
}

String getContentByLocale(BuildContext context, Map<String, String> content) {
  final currentLocale = Localizations.localeOf(context).languageCode;
  return content[currentLocale] ?? content['en'] ?? '';
}

final List<DiagnosticCriteria> diagnosticCriteria = [
  DiagnosticCriteria(
    title: {'en': 'Screening', 'ms': 'Penyaringan'},
    description: {
      'en':
          'Initial screening tests help identify individuals who may be at risk for dyslexia. Screening tools may assess skills such as phonological awareness, rapid naming, and decoding abilities.',
      'ms':
          'Ujian skrining awal membantu mengenal pasti individu yang mungkin berisiko mengalami disleksia. Alat skrining mungkin menilai kemahiran seperti kesedaran fonologi, pengenalan cepat, dan keupayaan penyahkodan.'
    },
  ),
  DiagnosticCriteria(
    title: {'en': 'Comprehensive Evaluation', 'ms': 'Penilaian Menyeluruh'},
    description: {
      'en':
          'Individuals who show signs of dyslexia undergo a comprehensive evaluation, which may include standardized tests, informal assessments, observations, and interviews with parents, teachers, and the individual themselves.',
      'ms':
          'Individu yang menunjukkan tanda-tanda disleksia menjalani penilaian menyeluruh, yang mungkin termasuk ujian piawai, penilaian tidak formal, pemerhatian, dan temu bual dengan ibu bapa, guru, dan individu itu sendiri.'
    },
  ),
  DiagnosticCriteria(
    title: {
      'en': 'Assessment of Language Skills',
      'ms': 'Penilaian Kemahiran Bahasa'
    },
    description: {
      'en':
          'The evaluation assesses various language-related skills, including reading fluency, accuracy, comprehension, spelling, writing, and phonological processing. It also examines cognitive abilities, such as memory, attention, and processing speed.',
      'ms':
          'Penilaian menilai pelbagai kemahiran berkaitan bahasa, termasuk lancar membaca, ketepatan, pemahaman, ejaan, penulisan, dan pemprosesan fonologi. Ia juga menguji keupayaan kognitif, seperti ingatan, perhatian, dan kelajuan pemprosesan.'
    },
  ),
  DiagnosticCriteria(
    title: {'en': 'Diagnostic Criteria', 'ms': 'Kriteria Diagnostik'},
    description: {
      'en':
          'Diagnosis of dyslexia is based on specific criteria outlined in diagnostic manuals, such as the Diagnostic and Statistical Manual of Mental Disorders (DSM-5) or the International Classification of Diseases (ICD-10). These criteria consider the severity and persistence of reading difficulties and their impact on academic achievement and daily functioning.',
      'ms':
          'Diagnosis disleksia berdasarkan kriteria tertentu yang diterangkan dalam manual diagnostik, seperti Manual dan Statistik Diagnostik Gangguan Jiwa (DSM-5) atau Klasifikasi Antarabangsa Penyakit (ICD-10). Kriteria ini mempertimbangkan keparahan dan ketekalan kesukaran membaca serta kesan mereka terhadap pencapaian akademik dan fungsi harian.'
    },
  ),
  // Add more diagnostic criteria here...
];

class DyslexiaTreatment {
  // final String title;
  // final String description;
  final Map<String, dynamic> title, description;

  DyslexiaTreatment({required this.title, required this.description});
}

final List<DyslexiaTreatment> dyslexiaTreatment = [
  DyslexiaTreatment(
    title: {
      'en': 'Structured Literacy Programs',
      'ms': 'Program Literasi Berstruktur'
    },
    description: {
      'en':
          'Structured literacy programs offer systematic instruction in phonemic awareness, phonics, vocabulary, fluency, and comprehension, using multisensory techniques to reinforce learning and cater to different learning styles.',
      'ms':
          'Program literasi berstruktur menawarkan pengajaran sistematik dalam kesedaran fonem, fonik, kosakata, lancar membaca, dan pemahaman, menggunakan teknik pelbagai deria untuk menguatkan pembelajaran dan memenuhi gaya pembelajaran yang berbeza.'
    },
  ),
  DyslexiaTreatment(
    title: {
      'en': 'Multisensory Teaching Methods',
      'ms': 'Kaedah Pengajaran Pelbagai Deria'
    },
    description: {
      'en':
          'Multisensory teaching methods involve utilizing various senses to enhance learning and memory, such as tracing letters in sand, using colored tiles for sounds, and tapping out words.',
      'ms':
          'Kaedah pengajaran pelbagai deria melibatkan menggunakan pelbagai deria untuk meningkatkan pembelajaran dan ingatan, seperti mengikuti huruf di pasir, menggunakan jubin berwarna untuk bunyi, dan mengetuk perkataan.'
    },
  ),
  DyslexiaTreatment(
    title: {'en': 'Assistive Technology Tools', 'ms': 'Alat Teknologi Bantu'},
    description: {
      'en':
          'Assistive technology tools, such as text-to-speech software, speech recognition programs, word prediction programs, audiobooks, and digital note-taking apps, can assist individuals with dyslexia in reading, writing, and organization.',
      'ms':
          'Alat teknologi bantu, seperti perisian teks-ke-ucapan, program pengiktirafan pertuturan, program ramalan kata, buku audio, dan aplikasi catatan digital, dapat membantu individu yang mengalami disleksia dalam membaca, menulis, dan organisasi.'
    },
  ),
  DyslexiaTreatment(
    title: {
      'en': 'Educational Accommodations',
      'ms': 'Pelbagai Penyesuaian Pendidikan'
    },
    description: {
      'en':
          'Educational accommodations, including extended test time, preferential seating, audiobooks, alternative formats, and assistive technology, can help individuals with dyslexia achieve equal access to education.',
      'ms':
          'Penyesuaian pendidikan, termasuk waktu ujian yang diperpanjang, tempat duduk pilihan, buku audio, format alternatif, dan teknologi bantu, dapat membantu individu yang mengalami disleksia mencapai akses yang sama dalam pendidikan.'
    },
  ),
  DyslexiaTreatment(
    title: {
      'en': 'Early Intervention and Remediation',
      'ms': 'Intervensi Awal dan Pembetulan'
    },
    description: {
      'en':
          'Early intervention and remediation are crucial for individuals with dyslexia, ideally in early elementary years, to prevent academic difficulties and enhance literacy skills.',
      'ms':
          'Intervensi awal dan pembetulan adalah penting bagi individu yang mengalami disleksia, idealnya pada tahun-tahun awal sekolah rendah, untuk mencegah kesulitan akademik dan meningkatkan kemahiran literasi.'
    },
  ),
  DyslexiaTreatment(
    title: {'en': 'Individualized Support', 'ms': 'Sokongan Individu'},
    description: {
      'en':
          'Individualized support plans, tailored to each dyslexia individual\'s unique needs and strengths, are crucial for maximizing their potential, involving targeted interventions, accommodations, and continuous progress monitoring.',
      'ms':
          'Pelan sokongan yang dipersonalisasi, disesuaikan dengan keperluan unik dan kekuatan setiap individu disleksia, adalah penting untuk memaksimumkan potensi mereka, melibatkan intervensi bersekat, penyesuaian, dan pemantauan kemajuan berterusan.'
    },
  ),
  // Add more dyslexia treatment methods here...
];
