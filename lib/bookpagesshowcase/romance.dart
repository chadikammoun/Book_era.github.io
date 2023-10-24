// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/pages/homepage1.dart';
import 'package:testproject/pages/selectedcategory.dart';

class romance extends StatefulWidget {
  @override
  _romanceState createState() => _romanceState();
}

class _romanceState extends State<romance> {
  // Title List Here
  var titleList = [
        "The Light Between Oceans",
        "Patriotism",
        "On Pain",
        "The Old Man and the Sea",
        "No Longer Human",
        "Harassment Architecture",
        "Deep Work",
        "What I Talk About",
        "The Compound Effect",
  ];

  // Description List Here
  var descList = [
        "Australia, 1926. After four harrowing years fighting on the Western Front, Tom Sherbourne returns home to take a job as the lighthouse keeper on Janus Rock, nearly half a day's journey from the coast. To this isolated island, where the supply boat comes once a season and shore leaves are granted every other year at best, Tom brings a young, bold, and loving wife, Isabel. Years later, after two miscarriages and one stillbirth, the grieving Isabel hears a baby's cries on the wind. A boat has washed up onshore carrying a dead man and a living baby.",
        "By now, Yukio Mishima’s (1925-1970) dramatic demise through an act of seppuku after an inflammatory public speech has become the stuff of literary legend. With Patriotism, Mishima was able to give his heartwrenching patriotic idealism an immortal vessel. A lieutenant in the Japanese army comes home to his wife and informs her that his closest friends have become mutineers. He and his beautiful loyal wife decide to end their lives together. In unwavering detail Mishima describes Shinji and Reiko making love for the last time and the couple’s seppuku that follows.",
        "Written and published in 1934, a year after Hitler's rise to power in Germany, Ernst Jünger's On Pain is an astonishing essay that announces the rise of a new metaphysics of pain in a totalitarian age. One of the most controversial authors of twentieth-century Germany, Jünger rejects the liberal values of liberty, security, ease, and comfort, and seeks instead the measure of man in the capacity to withstand pain and sacrifice. Jünger heralds the rise of a breed of men who--equipped with an unmatched ability to treat themselves and others in a cold and detached way--become one with new, terrorizing machines of death and destruction in human-guided torpedoes and manned airborne missiles, and whose peculiarly cruel way of seeing, resembling the insensitive lens of a camera, anticipates the horrors of World War II. With a preface by Russell A. Berman, and an introduction by translator David C. Durst, this remarkable essay not only provides valuable insights into the cult of courage and death in Nazi Germany, but also throws light on the ideology of terrorism today",
        "This short novel, already a modern classic, is the superbly told, tragic story of a Cuban fisherman in the Gulf Stream and the giant Marlin he kills and loses—specifically referred to in the citation accompanying the author's Nobel Prize for literature in 1954.",
        "samu Dazai's No Longer Human, this leading postwar Japanese writer's second novel, tells the poignant and fascinating story of a young man who is caught between the breakup of the traditions of a northern Japanese aristocratic family and the impact of Western ideas. In consequence, he feels himself disqualified from being human (a literal translation of the Japanese title).",
        "“At a glance, Mike comes off like a 1980s teen movie bully on downers.” - Playboy Magazine“…Mike Ma bragged about crashing a White House press conference.” - The Huffington Post. Now, you can read his long-awaited first book. Harassment Architecture has been described as an almost plotless and violent march against what the author calls the lowerworld. It's the story of a man, sick on his surrounds, bound by them, but still seeking the way out.",
        "Deep work is the ability to focus without distraction on a cognitively demanding task. It's a skill that allows you to quickly master complicated information and produce better results in less time. Deep work will make you better at what you do and provide the sense of true fulfillment that comes from craftsmanship. In short, deep work is like a super power in our increasingly competitive twenty-first century economy. And yet, most people have lost the ability to go deep-spending their days instead in a frantic blur of e-mail and social media, not even realizing there's a better way.",
        "In 1982, having sold his jazz bar to devote himself to writing, Murakami began running to keep fit. A year later, he'd completed a solo course from Athens to Marathon, and now, after dozens of such races, not to mention triathlons and a dozen critically acclaimed books, he reflects upon the influence the sport has had on his life and--even more important--on his writing. Equal parts training log, travelogue, and reminiscence, this revealing memoir covers his four-month preparation for the 2005 New York City",
        "No gimmicks. No Hyperbole. No Magic Bullet. The Compound Effect is based on the principle that decisions shape your destiny. Little, everyday decisions will either take you to the life you desire or to disaster by default. Darren Hardy, publisher of Success Magazine, presents The Compound Effect, a distillation of the fundamental principles that have guided the most phenomenal achievements in business, relationships, and beyond. This easy-to-use, step-by-step operating system allows you to multiply your success, chart your progress, and achieve any desire. If you’re serious about living an extraordinary life, use the power of The Compound Effect to create the success you want.",
  ];

  // Image Name List Here
  var imgList = [
        "images/bookim/65.jpg",
        "images/bookim/66.jpg",
        "images/bookim/67.jpg",
        "images/bookim/68.jpg",
        "images/bookim/69.jpg",
        "images/bookim/70.jpg",
        "images/bookim/71.jpg",
        "images/bookim/72.jpg",
        "images/bookim/73.jpg",
  ];
  var ratinglist = [
        "4/5",
        "4.1/5",
        "3.8/5",
        "3.8/5",
        "4/5",
        "4/5",
        "4.2/5",
        "3.8/5",
        "4.2/5",
  ];

  var authorslist = [
        "M.L. Stedman",
        "Yukio Mishima",
        "Ernst Jünger",
        "Ernest Hemingway",
        "Osamu Dazai",
        "Mike Ma",
        "Cal Newport",
        "Haruki Murakami",
        "Darren Hardy",
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
