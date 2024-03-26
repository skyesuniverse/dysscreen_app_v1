class DiagnosticCriteria {
  final String title;
  final String description;

  DiagnosticCriteria({required this.title, required this.description});
}

class DyslexiaTreatment {
  final String title;
  final String description;

  DyslexiaTreatment({required this.title, required this.description});
}

final List<DiagnosticCriteria> diagnosticCriteria = [
  DiagnosticCriteria(
    title: 'Screening',
    description:
        'Initial screening tests help identify individuals who may be at risk for dyslexia. Screening tools may assess skills such as phonological awareness, rapid naming, and decoding abilities.',
  ),
  DiagnosticCriteria(
    title: 'Comprehensive Evaluation',
    description:
        'Individuals who show signs of dyslexia undergo a comprehensive evaluation, which may include standardized tests, informal assessments, observations, and interviews with parents, teachers, and the individual themselves.',
  ),
  DiagnosticCriteria(
    title: 'Assessment of Language Skills',
    description:
        'The evaluation assesses various language-related skills, including reading fluency, accuracy, comprehension, spelling, writing, and phonological processing. It also examines cognitive abilities, such as memory, attention, and processing speed.',
  ),
  DiagnosticCriteria(
    title: 'Diagnostic Criteria',
    description:
        'Diagnosis of dyslexia is based on specific criteria outlined in diagnostic manuals, such as the Diagnostic and Statistical Manual of Mental Disorders (DSM-5) or the International Classification of Diseases (ICD-10). These criteria consider the severity and persistence of reading difficulties and their impact on academic achievement and daily functioning.',
  ),
  // Add more diagnostic criteria here...
];

final List<DyslexiaTreatment> dyslexiaTreatment = [
  DyslexiaTreatment(
    title: 'Structured Literacy Programs',
    description:
        'Structured literacy programs offer systematic instruction in phonemic awareness, phonics, vocabulary, fluency, and comprehension, using multisensory techniques to reinforce learning and cater to different learning styles.',
  ),
  DyslexiaTreatment(
    title: 'Multisensory Teaching Methods',
    description:
        'Multisensory teaching methods involve utilizing various senses to enhance learning and memory, such as tracing letters in sand, using colored tiles for sounds, and tapping out words.',
  ),
  DyslexiaTreatment(
    title: 'Assistive Technology Tools',
    description:
        'Assistive technology tools, such as text-to-speech software, speech recognition programs, word prediction programs, audiobooks, and digital note-taking apps, can assist individuals with dyslexia in reading, writing, and organization.',
  ),
  DyslexiaTreatment(
    title: 'Educational Accommodations',
    description:
        'Educational accommodations, including extended test time, preferential seating, audiobooks, alternative formats, and assistive technology, can help individuals with dyslexia achieve equal access to education.',
  ),
  DyslexiaTreatment(
    title: 'Early Intervention and Remediation',
    description:
        'Early intervention and remediation are crucial for individuals with dyslexia, ideally in early elementary years, to prevent academic difficulties and enhance literacy skills.',
  ),
  DyslexiaTreatment(
    title: 'Individualized Support',
    description:
        'Individualized support plans, tailored to each dyslexia individual\'s unique needs and strengths, are crucial for maximizing their potential, involving targeted interventions, accommodations, and continuous progress monitoring.',
  ),
  // Add more dyslexia treatment methods here...
];
