// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/pages/homepage1.dart';
import 'package:testproject/pages/selectedcategory.dart';

class crime extends StatefulWidget {
  @override
  _crimeState createState() => _crimeState();
}

class _crimeState extends State<crime> {
  // Title List Here
  var titleList = [
        "Things Have Gotten Worse",
        "utopia",
        "Nineteen Minutes",
        "Blood Games",
        "Message in a Bottle",
        "From Potter's Field",
        "London Bridges",
        "True Blue",
        "Ice",
        "Hometown Legend",
  ];

  // Description List Here
  var descList = [
        "Sadomasochism. Obsession. Death. A whirlpool of darkness churns at the heart of a macabre ballet between two lonely young women in an internet chat room in the early 2000s—a darkness that threatens to forever transform them once they finally succumb to their most horrific desires. What have you done today to deserve your eyes?",
        "A grim futuristic account of Egyptian society in the year 2023, Utopia takes readers on a chilling journey beyond the gated communities of the North Coast, where the wealthy are insulated from the bleakness of life outside the walls. When a young man and a girl break out from this bubble of affluence in order to see for themselves the lives of their impoverished fellow Egyptians they are confronted by a world that they had not imagined possible. Breathtaking and suspenseful, Utopia's twists and turns will keep listeners guessing until the very last moment, and may leave some wondering whether this is a vision of the future that is not too far away.",
        "Sterling is a small, ordinary New Hampshire town where nothing ever happens -- until the day its complacency is shattered by a shocking act of violence. In the aftermath, the town's residents must not only seek justice in order to begin healing but also come to terms with the role they played in the tragedy. For them, the lines between truth and fiction, right and wrong, insider and outsider have been obscured forever. Josie Cormier, the teenage daughter of the judge sitting on the case, could be the state's best witness, but she can't remember what happened in front of her own eyes. And as the trial progresses, fault lines between the high school and the adult community begin to show, destroying the closest of friendships and families.",
        "Laymon's restored version of his 1992 horror novel that tells of a group of former college friends who hold a reunion at a deserted resort lodge only to find they're sharing it with a maniac. — They meet for one week every year, five young women, best friends since college, in search of fun and thrills. Each year they choose a different place for their reunion. This year it's Helen's choice, and she chose the Totem Pole Lodge. Bad choice. The Totem Pole Lodge is a deserted resort hotel deep in the woods with a gory, shocking past Helen has a macabre streak and she can't wait to tell her friends all about what happened at the lodge and why it's now abandoned. But Helen and the others are in for a nasty surprise. The resort isn't quite as deserted as they think. And not all the gruesome events at the Totem Pole Lodge are in its past. The worst are still to come....",
        "Nicholas Sparks is our very best chronicler of the human heart. His stunning first novel, The Notebook, has been given by friend to friend and lover to lover all over the world as a testament to the timeless power of love. But if we thought he could never again move us so deeply, he now shows us he can-in a story that renews our faith in destiny...in the ability of true lovers to find each other no matter where, no matter when... Message In A Bottle",
        "Christmas has never been a particularly good time for Dr Kay Scarpetta. Although a holiday for most, the festivities always seem to heighten the alienation felt by society's violent fringe; and that usually means more work for Scarpetta, Virginia's Chief Medical Examiner and consulting forensic pathologist for the FBI.",
        "Minutes after soldiers evacuate a Nevada town, a bomb completely destroys it. On vacation, FBI agent Alex Cross gets the call: the blast was perpetrated by the Wolf. A supercriminal and Cross's deadliest nemesis, the Wolf threatens to obliterate major cities, including London, Paris, and New York. Then evidence reveals the involvement of a ruthless assassin known as the Weasel. Could these two dark geniuses be working together? Now with just four days to prevent an unimaginable cataclysm, Cross is catapulted into an international chase of astonishing danger --- and toward the explosive truth about the Wolf's identity, a revelation that Cross may not survive.",
        "Mason Mace Perry was a firebrand cop on the D.C. police force until she was kidnapped and framed for a crime. She lost everything: her badge, her career, her freedom--and spent two years in prison. Now she's back on the outside and focused on one mission: to be a cop once more. Her only shot to be a true blue again is to solve a major case on her own, and prove she has the right to wear the uniform. Even with her police chief sister on her side, she has to work in the shadows: a vindictive U.S. attorney is looking for any reason to send Mace back behind bars. Then Roy Kingman enters her life.",
        "Ice coats the streets where the rapist prowls. Ice spills from the pockets of a dead diamond dealer. Ice runs through the heart of a cold-blooded killer and that of the players in a multimillion dollar show-biz scam. And the deep chill of winter, it is the 87th Precinct who must brave the winds of death to save a city frozen with fear. National ads/media.",
        "Athens City, Alabama, is a town that lost its heart the day the high school football team lost the state championship and suffered a tragedy. The town that once enjoyed superstar status has fallen on hard times. Now, years later, the former coach returns to head up one final season aided by a local who tells the story with a fresh voice.",
          ];

  // Image Name List Here
  var imgList = [
        "images/bookim/10.jpg",
        "images/bookim/11.jpg",
        "images/bookim/12.jpg",
        "images/bookim/24.jpg",
        "images/bookim/25.jpg",
        "images/bookim/26.jpg",
        "images/bookim/27.jpg",
        "images/bookim/28.jpg",
        "images/bookim/29.jpg",
        "images/bookim/30.jpg",
  ];
  var ratinglist = [
        "3/5",
        "4/5",
        "4.1/5",
        "3.7/5",
        "3.9/5",
        "4/5",
        "3.9/5",
        "3.9/5",
        "3.9/5",
        "3.8/5",
        
  ];

  var authorslist = [
        "Eric LaRocca",
        "Ahmed Khaled Towfik",
        "Jodi Picoult",
        "Richard Laymon",
        "Nicholas Sparks",
        "Patricia Cornwell",
        "James Patterson",
        "David Baldacci",
        "Ed McBain",
        "Jerry B. Jenkins",
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
