// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/pages/homepage1.dart';
import 'package:testproject/pages/selectedauthors.dart';




class ListViewauth extends StatefulWidget {
  @override
  _ListViewauthState createState() => _ListViewauthState();
}

class _ListViewauthState extends State<ListViewauth> {
  // Title List Here
  var titleList = [
   "Malcolm X",
"J.R.R. Tolkien",
"Jon Krakauer",
"Chuck Palahniuk",
"Yukio Mishima",
"Theodore J. Kaczynski",
"Seneca",
"Takehiko Inoue",
"Kentaro Miura",
"M.L. Stedman",
"George R.R. Martin",
"Ernst Jünger",
"Ernest Hemingway",
"Haruki Murakami",
"George Orwell",
"Fyodor Dostoevsky",
"Viktor E. Frankl",
"Ryan Holiday",
  ];

  // Description List Here
  var descList = [
"Malcolm X (born Malcolm Little), also known as El-Hajj Malik El-Shabazz, was an American Black Muslim minister and a spokesman for the Nation of Islam. After leaving the Nation of Islam in 1964, he made the pilgrimage, the Hajj, to Mecca and became a Sunni Muslim. He also founded the Muslim Mosque, Inc. and the Organization of Afro-American Unity. Less than a year later, he was assassinated in Washington Heights on the first day of National Brotherhood Week.",
"John Ronald Reuel Tolkien: writer, artist, scholar, linguist. Known to millions around the world as the author of The Lord of the Rings, Tolkien spent most of his life teaching at the University of Oxford where he was a distinguished academic in the fields of Old and Middle English and Old Norse. His creativity, confined to his spare time, found its outlet in fantasy works, stories for children, poetry, illustration and invented languages and alphabets.",
"Jon Krakauer is an American writer and mountaineer, well-known for outdoor and mountain-climbing writing.",
"Written in stolen moments under truck chassis and on park benches to a soundtrack of The Downward Spiral and Pablo Honey, Fight Club came into existence. The adaptation of Fight Club was a flop at the box office, but achieved cult status on DVD. The film’s popularity drove sales of the novel. Chuck put out two novels in 1999, Survivor and Invisible Monsters. Choke, published in 2001, became Chuck’s first New York Times bestseller. Chuck’s work has always been infused with personal experience, and his next novel, Lullaby, was no exception. Chuck credits writing Lullaby with helping him cope with the tragic death of his father. Diary and the non-fiction guide to Portland, Fugitives and Refugees, were released in 2003. While on the road in support of Diary, Chuck began reading a short story entitled 'Guts,' which would eventually become part of the novel Haunted.",
"Yukio Mishima (三島 由紀夫) was born in Tokyo in 1925. He graduated from Tokyo Imperial University’s School of Jurisprudence in 1947. His first published book, The Forest in Full Bloom, appeared in 1944 and he established himself as a major author with Confessions of a Mask (1949). From then until his death he continued to publish novels, short stories, and plays each year. His crowning achievement, the Sea of Fertility tetralogy—which contains the novels Spring Snow (1969), Runaway Horses (1969), The Temple of Dawn (1970), and The Decay of the Angel (1971)—is considered one of the definitive works of twentieth-century Japanese fiction. In 1970, at the age of forty-five and the day after completing the last novel in the Fertility series, Mishima committed seppuku (ritual suicide)—a spectacular death that attracted worldwide attention.",
"Theodore John Kaczynski (/kəˈzɪnski/; born May 22, 1942), also known as the Unabomber, is an American mathematician, anarchist and domestic terrorist, who killed people he thought were proponents of modern technology, and is serving life in prison. Kaczynski was born and raised in Evergreen Park, Illinois. While growing up in Evergreen Park he was a child prodigy, excelling academically from an early age. Kaczynski was accepted into Harvard University at the age of 16, where he earned an undergraduate degree. He subsequently earned a PhD in mathematics from the University of Michigan. He became an assistant professor at the University of California, Berkeley in 1967 at age 25. He resigned two years later.",
"Lucius Annaeus Seneca (often known simply as Seneca or Seneca the Younger); ca. 4 BC – 65 AD) was a Roman Stoic philosopher, statesman, dramatist, and in one work humorist, of the Silver Age of Latin literature. He was tutor and later advisor to emperor Nero. While he was later forced to commit suicide for alleged complicity in the Pisonian conspiracy to assassinate Nero, the last of the Julio-Claudian emperors.",
"Takehiko Inoue (井上雄彦) is a Japanese manga artist, best known for the basketball manga Slam Dunk, which has become a success both in Japan and overseas. Many of his works are about basketball, Inoue himself being a huge fan of the sport, and many Japanese children started to play basketball because they read the manga. This in turn helped make basketball popular in Japan and across East Asia.",
"Kentarou Miura (三浦建太郎) was born in Chiba City, Chiba Prefecture, Japan, in 1966. He is left-handed. In 1976, at the early age of 10, Miura made his first Manga, entitled Miuranger, that was published for his classmates in a school publication; the manga ended up spanning 40 volumes. In 1977, Miura created his second manga called Ken e no michi (剣への道 The Way to the Sword), using Indian ink for the first time. When he was in middle school in 1979, Miura's drawing techniques improved greatly as he started using professional drawing techniques. His first dōjinshi was published, with the help of friends, in a magazine in 1982.",
"M.L. Stedman was born and raised in Western Australia and now lives in London. The Light Between Oceans is her first novel.",
"George Raymond Richard R.R. Martin was born September 20, 1948, in Bayonne, New Jersey. His father was Raymond Collins Martin, a longshoreman, and his mother was Margaret Brady Martin. He has two sisters, Darleen Martin Lapinski and Janet Martin Patten.",
"Ernst Jünger was a decorated German soldier and author who became famous for his World War I memoir Storm of Steel. The son of a successful businessman and chemist, Jünger rebelled against an affluent upbringing and sought adventure in the Wandervogel, before running away to briefly serve in the French Foreign Legion, an illegal act. Because he escaped prosecution in Germany due to his father's efforts, Junger was able to enlist on the outbreak of war. A fearless leader who admired bravery above all else, he enthusiastically participated in actions in which his units were sometimes virtually annihilated. During an ill-fated German offensive in 1918 Junger's WW1 career ended with the last and most serious of his many woundings",
"Ernest Miller Hemingway was an American author and journalist. His economical and understated style had a strong influence on 20th-century fiction, while his life of adventure and his public image influenced later generations. Hemingway produced most of his work between the mid-1920s and the mid-1950s, and won the Nobel Prize in Literature in 1954. He published seven novels, six short story collections and two non-fiction works. Three novels, four collections of short stories and three non-fiction works were published posthumously. Many of these are considered classics of American literature.",
"Since childhood, Murakami has been heavily influenced by Western culture, particularly Western music and literature. He grew up reading a range of works by American writers, such as Kurt Vonnegut and Richard Brautigan, and he is often distinguished from other Japanese writers by his Western influences.",
"Eric Arthur Blair, better known by his pen name George Orwell, was an English author and journalist. His work is marked by keen intelligence and wit, a profound awareness of social injustice, an intense opposition to totalitarianism, a passion for clarity in language, and a belief in democratic socialism.",
"Fyodor Mikhailovich Dostoevsky was a Russian novelist, short story writer, essayist, and journalist. His literary works explore human psychology in the troubled political, social, and spiritual atmospheres of 19th-century Russia, and engage with a variety of philosophical and religious themes. His most acclaimed novels include Crime and Punishment (1866), The Idiot (1869), Demons (1872), and The Brothers Karamazov (1880).",
"Viktor Emil Frankl M.D., Ph.D., was an Austrian neurologist and psychiatrist as well as a Holocaust survivor. Frankl was the founder of logotherapy, which is a form of Existential Analysis, the Third Viennese School of psychotherapy",
"Ryan Holiday is media strategist for notorious clients like Tucker Max and Dov Charney. After dropping out of college at 19 to apprentice under the strategist Robert Greene, he went on to advise many bestselling authors and multi-platinum musicians. He is the Director of Marketing at American Apparel, where his work in advertising was internationally known. His strategies are used as case studies by Twitter, YouTube, and Google, and have been written about in AdAge, the New York Times, Gawker, and Fast Company. He is the author is *Trust Me, I'm Lying: Confessions of a Media Manipulator*, which is due out in July. He currently lives in New Orleans, with his rebellious puppy, Hanno",

];

  // Image Name List Here
  var imgList = [
    "images/authimg/80.jpg",
    "images/authimg/81.jpg",
    "images/authimg/82.jpg",
    "images/authimg/84.jpg",
    "images/authimg/85.jpg",
    "images/authimg/86.jpg",
    "images/authimg/87.jpg",
    "images/authimg/88.jpg",
    "images/authimg/89.jpg",
    "images/authimg/90.jpg",
    "images/authimg/91.jpg",
    "images/authimg/92.jpg",
    "images/authimg/93.jpg",
    "images/authimg/94.jpg",
    "images/authimg/95.jpg",
    "images/authimg/96.jpg",
    "images/authimg/97.jpg",
    "images/authimg/98.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    return Scaffold(
      appBar: AppBar(
        // App Bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>homepage1())),
          ),
        title: Text(
          "Authors",
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Selectedauthors(
                  img : imgList[index],
                  title: titleList[index],
                  desc: descList[index],
              )
              )
              );
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
                            fontSize: 22,
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
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

