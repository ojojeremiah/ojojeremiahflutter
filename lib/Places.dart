
class Places{

  dynamic country;
  dynamic location;
  dynamic about;
  dynamic pictures;

  Places({
    this.pictures,
    this.country,
    this.location,
    this.about,
  });
}
List<Places> explore =[
  Places(pictures: 'assets/korea.jpg',
      country:'South Korea',
      location:'Gyeongbokgung',
      about:'Gyeongbokgung also known as Gyeongbokgung Palace was the main royal palace built in 1395, it is located in northern Seoul, South Korea.It is the largest of the five built by the Joseon dynasty.'
  ),
  Places(
      pictures:'assets/Jamaica.jpg',
      country: 'Jamaica',
      location: "Dunn's River Falls and Park",
      about: "960 feet of fun! Dunn's River falls is an astounding flowing falls that extends across more than 183 meters or 960 feet and is one of the most well-loved travel location."
  ),
  Places(pictures:'assets/Ibiza.jpg',
      country: 'Spain',
      location: 'Ibiza',
      about: "Ibiza is well known for its nightlife and electronic dance music club in the summer, which attract large numbers of tourist. The island's government and Spanish Tourist office have worked toward promoting more family-oriented tourism."),
  Places(
      pictures:'assets/morocco.jpg',
      country: 'Morocco',
      location: 'Ksar of Ait-Ben-Haddou',
      about: "The site of the ksar has been fortified since the 11th century and it holds history of the Moroccan earthen clay.Today th ksar itself is only sparsely inhabited by several families.The depopulation over time is a result of the valley's loss of strategic importance in the 20th century."
  ),
];
