import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'commentbox/comment_one.dart';
import 'navigation_bar.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //use this controller to get what the user typed
  final _textController = TextEditingController();
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
        extendBodyBehindAppBar: true,
        drawer: const NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 160,
            flexibleSpace: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 242, 174, 39),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(55),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Find Something",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0)),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 242, 174, 39),
                      ),
                      suffixIcon: const Icon(
                        Icons.mic_none,
                        color: Color.fromARGB(255, 242, 174, 39),
                      ),
                    ),
                  ),
                ))),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            TextField(
              controller: _textController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "What's New?",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: const Icon(Icons.edit,
                      color: Color.fromARGB(255, 242, 174, 39)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                    color: const Color.fromARGB(255, 242, 174, 39),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            )),
                        icon: const Icon(
                          Icons.image,
                          color: Color.fromARGB(255, 242, 174, 39),
                        ),
                        label: const Text("Photo"),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            )),
                        icon: const Icon(
                          Icons.video_camera_back,
                          color: Color.fromARGB(255, 242, 174, 39),
                        ),
                        label: const Text("Video"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
                            color: Colors.pink,
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
                  right: 280,
                ),
                child: Column(
                  children: const [
                    Text("Looks Tasty"),
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
                        color: Colors.pink,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //container 2
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
                        color: Colors.pink,
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
                padding: const EdgeInsets.only(
                  bottom: 10,
                  right: 280,
                ),
                child: Column(
                  children: const [
                    Text("LEZGOOO!"),
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
