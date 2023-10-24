// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/pages/homepage1.dart';
import 'package:testproject/pages/selectedcategory.dart';

class adventure extends StatefulWidget {
  @override
  _adventureState createState() => _adventureState();
}

class _adventureState extends State<adventure> {
  // Title List Here
  var titleList = [
        "Choke",
        "Dark Matter",
        "Gothic Violence",
        "Storm of Steel",
        "The Comfort Crisis",
        "Food Rules:An Eater's Manual",
        "Against Ordinary Language",
        "Sun & Steel",
        "Industrial Society and Its Future",
        "One-Punch Man",
  ];

  // Description List Here
  var descList = [
        "Needing to pay elder care for his mother, Victor has devised an ingenious scam: he pretends to choke on pieces of food while dining in upscale restaurants. He then allows himself to be “saved” by fellow patrons who, feeling responsible for Victor’s life, go on to send checks to support him.",
        "Jason Dessen is walking home through the chilly Chicago streets one night, looking forward to a quiet evening in front of the fireplace with his wife, Daniela, and their son, Charlie—when his reality shatters.",
        "GOTHIC VIOLENCE is a fictional dark comedy by author, Mike Ma. Though is a continuation of the first work, this book stands alone. GOTHIC VIOLENCE follows a gang of jihadist surfers who use insider trading profit to disable the national power grid and capture Florida amid total panic.",
        "A memoir of astonishing power, savagery, and ashen lyricism, 'Storm of Steel' illuminates not only the horrors but also the fascination of total war, seen through the eyes of an ordinary German soldier.",
        "In many ways, we’re more comfortable than ever before. But could our sheltered, temperature-controlled, overfed, underchallenged lives actually be the leading cause of many our most urgent physical and mental health issues? In this gripping investigation, award-winning journalist Michael Easter seeks out off-the-grid visionaries, disruptive genius researchers, and mind-body conditioning trailblazers who are unlocking the life-enhancing secrets of a counterintuitive solution: discomfort.",
        "Eating doesn't have to be so complicated. In this age of ever-more elaborate diets and conflicting health advice, Food Rules brings a welcome simplicity to our daily decisions about food. Written with the clarity, concision and wit that has become bestselling author Michael Pollan's trademark, this indispensable handbook lays out a set of straightforward, memorable rules for eating wisely, one per page, accompanied by a concise explanation. It's an easy-to-use guide that draws from a variety of traditions, suggesting how different cultures through the ages have arrived at the same enduring wisdom about food. Whether at the supermarket or an all-you-can-eat buffet, this is the perfect guide for anyone who ever wondered, What should I eat?",
        "None",
        "At one level, it may be read as an account of how a puny, bookish boy discovered the importance of his own physical being; the sun and steel of the title are themselves symbols respectively of the cult of the open air and the weights used in bodybuilding. At another level, it is a discussion by a major novelist of the relation between action and art, and his own highly polished art in particular. More personally, it is an account of one individual's search for identity and self-integration. Or again, the work could be seen as a demonstration of how an intensely individual preoccupation can be developed into a profound philosophy of life.",
        "The Industrial Revolution and its consequences have been a disaster for the human race. They have greatly increased the life-expectancy of those of us who live in advanced countries, but they have destabilized society, have made life unfulfilling, have subjected human beings to indignities, have led to widespread psychological suffering (in the Third World to physical suffering as well) and have inflicted severe damage on the natural world. The continued development of technology will worsen the situation. It will certainly subject human beings to greater indignities and inflict greater damage on the natural world, it will probably lead to greater social disruption and psychological suffering, and it may lead to increased physical suffering even in advanced countries.",
        "Nothing about Saitama passes the eyeball test when it comes to superheroes, from his lifeless expression to his bald head to his unimpressive physique. However, this average-looking guy has a not-so-average problem—he just can’t seem to find an opponent strong enough to take on! Every time a promising villain appears, he beats the snot out of ’em with one punch! Can Saitama finally find an opponent who can go toe-to-toe with him and give his life some meaning? Or is he doomed to a life of superpowered boredom?",
          ];

  // Image Name List Here
  var imgList = [
        "images/bookim/42.jpg",
        "images/bookim/43.jpg",
        "images/bookim/44.jpg",
        "images/bookim/45.jpg",
        "images/bookim/46.jpg",
        "images/bookim/47.jpg",
        "images/bookim/48.jpg",
        "images/bookim/49.jpg",
        "images/bookim/50.jpg",
        "images/bookim/51.jpg",
  ];
  var ratinglist = [
        "3.8/5",
        "3.7/5",
        "4.1/5",
        "4/5",
        "4.1/5",
        "4.4/5",
        "4/5",
        "4/5",
        "4/5",
        "3.9/5",
  ];

  var authorslist = [
        "Chuck Palahniuk",
        "Blake Crouch",
        "Mike Ma",
        "Ernst Jünger",
        "Michael Easter",
        "Michael Pollan",
        "Kathy Acker",
        "Yukio Mishima",
        "Theodore J. Kaczynski",
        "ONE",
  ];
  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        // App Bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => homepage1())),
        ),
        title: Text(
          "Discover books",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => SelectedcategoryScreen(
                        img: imgList[index],
                        title: titleList[index],
                        desc: descList[index],
                        authors: authorslist[index],
                        rating: ratinglist[index],
                      )));
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: GoogleFonts.bebasNeue(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            ratinglist[index],
                            maxLines: 80,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            authorslist[index],
                            maxLines: 80,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
