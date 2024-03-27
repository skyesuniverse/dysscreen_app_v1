class MalaysiaOrg {
  final String id, myOrg_Name;
  final String myOrg_WebLink;

  MalaysiaOrg(
      {required this.myOrg_Name,
      required this.myOrg_WebLink,
      required this.id});
}

final List<MalaysiaOrg> my_Org = [
  MalaysiaOrg(
    id: '1',
    myOrg_Name: 'Dyslexia Association of Malaysia (DAM)',
    myOrg_WebLink: 'https://dyslexiamalaysia.org/',
  ),
  MalaysiaOrg(
    id: '2',
    myOrg_Name: 'National Organization for Dyslexia Malaysia (NOD Malaysia)',
    myOrg_WebLink: 'https://nodmalaysia.com/index.php',
  ),
  MalaysiaOrg(
    id: '3',
    myOrg_Name: 'Dyslexia Association of Sarawak (DASwk)',
    myOrg_WebLink: 'https://www.dyslexia-swk.com/',
  ),
];

class InternationalOrg {
  final String id, internationalOrg_Name;
  final String internationalOrg_WebLink;

  InternationalOrg(
      {required this.internationalOrg_Name,
      required this.internationalOrg_WebLink,
      required this.id});
}

final List<InternationalOrg> international_Org = [
  InternationalOrg(
    id: '1',
    internationalOrg_Name: 'International Dyslexia Association (IDA)',
    internationalOrg_WebLink: 'https://dyslexiaida.org/',
  ),
  InternationalOrg(
    id: '2',
    internationalOrg_Name: 'British Dyslexia Association (BDA):',
    internationalOrg_WebLink: 'https://www.bdadyslexia.org.uk/',
  ),
  InternationalOrg(
    id: '3',
    internationalOrg_Name: 'Dyslexia Association Australia',
    internationalOrg_WebLink: 'https://dyslexiaassociation.org.au/',
  ),
  InternationalOrg(
    id: '4',
    internationalOrg_Name: 'Dyslexia Foundation of New Zealand',
    internationalOrg_WebLink: 'https://www.dyslexiafoundation.org.nz/',
  ),
  InternationalOrg(
    id: '5',
    internationalOrg_Name: 'The Yale Center for Dyslexia & Creativity (YCDC)',
    internationalOrg_WebLink: 'https://dyslexia.yale.edu/',
  ),
];
