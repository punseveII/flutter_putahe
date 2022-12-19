import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:putahe/homepage/commentBox/comment_one.dart';
import 'package:putahe/homepage/navigation_bar.dart';

class VideoList extends StatefulWidget {
  const VideoList({super.key});

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Putahe: The Master of Kitchen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(239, 250, 250, 250),
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Video Tutorials",
              style: TextStyle(
                fontSize: 20,
              )),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            //profile
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://i.cartoonnetwork.com/orchestrator/839543_009_640x360.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Earl Michael Filosopo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15, left: 160),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.orange,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: const [
                    Text(
                        "Watch this video on how to cook this Pancit Bihon of mine."),
                  ],
                ),
              ),
            ),
            //first container
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i0.wp.com/www.angsarap.net/wp-content/uploads/2021/08/Seafood-Pancit-Bihon-Guisado-Wide.jpg?fit=1080%2C720&ssl=1'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const LikeButton(
                            likeCount: 199,
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Center(
                            //comment
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const TestMe()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              icon: const Icon(
                                Icons.comment,
                                color: Colors.grey,
                              ),
                              label: const Text(
                                "Comment",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          LikeButton(
                            //share
                            likeBuilder: (isTapped) {
                              return Icon(
                                Icons.share,
                                color: isTapped
                                    ? Colors.green.shade400
                                    : Colors.grey,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "Timmy John Pintor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 170),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.orange,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 165),
                child: Column(
                  children: const [
                    Text("Learn this Pinoy Spaghetti Style."),
                  ],
                ),
              ),
            ),
            //container 3
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/R.6094a92c8ab37eec0daf4c7607d9d386?rik=WstsuxkZAhgWsA&riu=http%3a%2f%2fmedia3.s-nbcnews.com%2fi%2fnewscms%2f2016_37%2f1158018%2fmeatballs-today-160914-tease-02_9473265cce330fbbe87dc3cad7ac7654.jpg&ehk=5SSxwB3A6IGhfEcWJ3dReMLBXa%2bj4YdfddkCcJ0GN%2fQ%3d&risl=&pid=ImgRaw&r=0'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      //react 2
                      color: Colors.white,
                      child: const LikeButton(
                        likeCount: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        icon: const Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    LikeButton(
                      //share 2
                      likeBuilder: (isTapped) {
                        return Icon(
                          Icons.share,
                          color: isTapped ? Colors.green.shade400 : Colors.grey,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.NGZUtk2_3hcN9LI2xxnJrQHaEK?pid=ImgDet&rs=1'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "Ella Venice Punay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 180),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.orange,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 120),
                child: Column(
                  children: const [
                    Text("This Special Egg Fried Rice is so yummy."),
                  ],
                ),
              ),
            ),
            //first container
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/R.9ebac021e22891d1317cc35f0a15dfc9?rik=2bWJze1wYicVEw&riu=http%3a%2f%2fwww.gimmesomeoven.com%2fwp-content%2fuploads%2f2012%2f11%2fpork-fried-rice-1.jpg&ehk=9weuC12ojX5GCujMxbuaHrQ6X4WMNCPIcfdbLdGi5x0%3d&risl=&pid=ImgRaw&r=0'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const LikeButton(
                            likeCount: 199,
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Center(
                            //comment
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              icon: const Icon(
                                Icons.comment,
                                color: Colors.grey,
                              ),
                              label: const Text(
                                "Comment",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          LikeButton(
                            //share
                            likeBuilder: (isTapped) {
                              return Icon(
                                Icons.share,
                                color: isTapped
                                    ? Colors.green.shade400
                                    : Colors.grey,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
