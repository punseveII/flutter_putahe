import 'package:flutter/material.dart';
import 'homepage.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text(
            'Timmy John T. Pintor',
            style: TextStyle(color: Colors.white),
          ),
          accountEmail: const Text(
            'timmypintor@gmail.com',
            style: TextStyle(color: Colors.white),
          ),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Homepage'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyHomepage()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.list_alt),
          title: const Text('Saved Recipes'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.play_circle),
          title: const Text('Watch Videos'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.list_alt),
          title: const Text('Order a dish'),
          onTap: () {},
        ),
      ],
    ));
  }
}
