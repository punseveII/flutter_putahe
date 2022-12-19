// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class TestMe extends StatefulWidget {
  const TestMe({super.key});

  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Earl Michael Filosopo',
      'pic': 'https://i.cartoonnetwork.com/orchestrator/839543_009_640x360.jpg',
      'message': 'I want to learn cooking',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Ella Punay',
      'pic':
          'https://th.bing.com/th/id/OIP.NGZUtk2_3hcN9LI2xxnJrQHaEK?pid=ImgDet&rs=1',
      'message': 'Very cool',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'James Harold',
      'pic': 'https://i.cartoonnetwork.com/orchestrator/839543_009_640x360.jpg',
      'message': 'Looks Delicious',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Biggi Man',
      'pic':
          'https://th.bing.com/th/id/R.7c974424387016cf51d8868914065832?rik=jHIkHfWZ%2benZHw&riu=http%3a%2f%2fstatic.comicvine.com%2fuploads%2foriginal%2f13%2f132162%2f3401715-lsp_your_wearing_garbage_for_clothes!!!!!!!!.png&ehk=1cb8ns30nNmxiOMnAeFNavPLks%2bJX2dXifp1j5XC4I8%3d&risl=&pid=ImgRaw&r=0',
      'message': 'Hmmm... tasty',
      'date': '2021-01-01 12:00:00'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing:
                  Text(data[i]['date'], style: const TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comment Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: CommentBox(
        userImage: CommentBox.commentImageParser(
            imageURLorPath:
                "https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146"),
        labelText: 'Write a comment...',
        errorText: 'Comment cannot be blank',
        withBorder: false,
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            print(commentController.text);
            setState(() {
              var value = {
                'name': 'Timmy John T. Pintor',
                'pic':
                    'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146',
                'message': commentController.text,
                'date': '2021-01-01 12:00:00'
              };
              filedata.insert(0, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          } else {
            print("Not validated");
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: Colors.orangeAccent,
        textColor: Colors.white,
        sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
        child: commentChild(filedata),
      ),
    );
  }
}
