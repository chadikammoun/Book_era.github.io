// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/pages/homepage1.dart';
import 'package:testproject/pages/selectedcategory.dart';

class fantasy extends StatefulWidget {
  @override
  _fantasyState createState() => _fantasyState();
}

class _fantasyState extends State<fantasy> {
  // Title List Here
  var titleList = [
        "The Widow of the South",
        "The Last Oracle",
        "Three Days of Happiness",
        "Saladin:Life,Legend,Legacy",
        "Tuesdays with Morrie",
        "Sword of Allah:Khalid bin Al-Waleed",
        "The Setting Sun",
        "Barking at the Herd",
        "Masculinity Amidst Madness",
        "The Metamorphosis",
  ];

  // Description List Here
  var descList = [
        "Tennessee, 1864. On a late autumn day, near a little town called Franklin, 10,000 men will soon lie dead or dying in a battle that will change many lives for ever. None will be more changed than Carrie McGavock, who finds her home taken over by the Confederate army and turned into a field hospital. Taking charge, she finds the courage to face up to the horrors around her and, in doing so, finds a cause.",
        "In Washington, D.C., a homeless man dies in Commander Gray Pierce's arms, shot by an assassin's bullet. But the death leaves behind a greater mystery: a bloody coin found clutched in the dead man's hand, an ancient relic that can be traced back to the Greek Oracle of Delphi. As ruthless hunters search for the stolen artifact, Gray Pierce discovers that the coin is the key to unlocking a plot that dates back to the Cold War and threatens the very foundation of humanity.",
        "Kusunoki used to believe he was destined for great things. Ostracized as a child, he held on to a belief that a good life was waiting for him in the years ahead. Now approaching the age of twenty, he's a completely mediocre college student with no motivation, no dreams, and no money. After learning he can sell his remaining years-and just how little they're worth-he chooses to divest himself of all but his last three months. Has Kusunoki truly destroyed his last chance to find happiness...or has he somehow found it?",
        "Saladin remains one of the most iconic figures of his age. As the man who united the Arabs and saved Islam from Christian crusaders in the 12th century, he is the Islamic world’s preeminent hero. Ruthless in defence of his faith, brilliant in leadership, he also possessed qualities that won admiration from his Christian foes. He knew the limits of violence, showing such tolerance and generosity that many Europeans, appalled at the brutality of their own people, saw him as the exemplar of their own knightly ideals.",
        "Maybe it was a grandparent, or a teacher or a colleague. Someone older, patient and wise, who understood you when you were young and searching, and gave you sound advice to help you make your way through it. For Mitch Albom, that person was Morrie Schwartz, his college professor from nearly twenty years ago.",
        "Khalid bin Al-Waleed was one of the greatest generals in history, and one of the greatest heroes of Islam. Besides him, Genghis Khan was the only other general to remain undefeated in his entire military life. A measure of Khalid's genius is that he was the only person to inflict a (temporary) defeat on the Prophet Muhammad, (sallallahu alayhi wasallam).",
        "The post-war period in Japan was one of immense social change as Japanese society adjusted to the shock of defeat and to the occupation of Japan by American forces and their allies. Osamu Dazai’s The Setting Sun takes this milieu as its background to tell the story of the decline of a minor aristocratic family.",
        "Part original myth. Part philosophy. Part madness. The hound barks. Will the herd listen?",
        "The world is on fire. Everything you know-or thought you knew-is being destroyed before your eyes. Culture is perverted, nations are subverted, and reality itself is being warped through nonstop gaslighting. In a world where you can't trust governments, the police, or even your own countrymen to take your side, you are the only man you can rely upon. But how do you carve your own path when you've been trained from birth to be an observer, a consumer, a swine eating the slop poured out for you?",
        "As Gregor Samsa awoke one morning from uneasy dreams he found himself transformed in his bed into a gigantic insect. He was laying on his hard, as it were armor-plated, back and when he lifted his head a little he could see his domelike brown belly divided into stiff arched segments on top of which the bed quilt could hardly keep in position and was about to slide off completely. His numerous legs, which were pitifully thin compared to the rest of his bulk, waved helplessly before his eyes.",
         ];

  // Image Name List Here
  var imgList = [
        "images/bookim/31.jpg",
        "images/bookim/32.jpg",
        "images/bookim/33.jpg",
        "images/bookim/34.jpg",
        "images/bookim/35.jpg",
        "images/bookim/36.jpg",
        "images/bookim/37.jpg",
        "images/bookim/38.jpg",
        "images/bookim/39.jpg",
        "images/bookim/40.jpg",
  ];
  var ratinglist = [
        "3.8/5",
        "3.7/5",
        "4.1/5",
        "4.3/5",
        "3.8/5",
        "4.1/5",
        "4.4/5",
        "4/5",
        "3.4/5",
        "4.1/5",
  ];

  var authorslist = [
        "Robert Hicks",
        "James Rollins",
        "Sugaru Miaki",
        "John Man",
        "Mitch Albom",
        "Agha Ali Ibrahim Akram",
        "Osamu Dazai",
        "Doonvorcannon",
        "Ryan Landry",
        "Franz Kafka",
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
