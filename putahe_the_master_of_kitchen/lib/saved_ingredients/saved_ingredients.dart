//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:putahe/homepage/navigation_bar.dart';
import 'dishes.dart';

class SavedIngredients extends StatefulWidget {
  const SavedIngredients({super.key});

  @override
  State<SavedIngredients> createState() => _SavedIngredientsState();
}

class _SavedIngredientsState extends State<SavedIngredients> {
  final controller = TextEditingController();
  List<Dish> dishes = allDish;
  int _selectIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [];

  // final itemList = [
  //   {'image': 'assets/img/Emp.jpg', 'title': 'EMBUTIDO'},
  //   {'image': 'assets/img/Emp.jpg', 'title': 'BIHON'},
  //   {'image': 'assets/img/Emp.jpg', 'title': 'ESCABECHE'},
  //   {'image': 'assets/img/Emp.jpg', 'title': 'MEAT BALLS'},
  //   {'image': 'assets/img/Emp.jpg', 'title': 'MEAT BALLS'},
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Saved Recipes",
              style: TextStyle(
                fontSize: 20,
              )),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Dish',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orangeAccent),
                  ),
                ),
                onChanged: searchDish,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dishes.length,
                itemBuilder: (context, index) {
                  final dish = dishes[index];

                  return Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      ListTile(
                          onTap: () {},
                          leading: Image.network(
                            dish.urlImage,
                            fit: BoxFit.cover,
                            width: 250,
                            height: 400,
                          ),
                          title: Text(
                            dish.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void searchDish(String query) {
    final suggestions = allDish.where((dish) {
      final dishTitle = dish.title.toLowerCase();
      final input = query.toLowerCase();

      return dishTitle.contains(input);
    }).toList();

    setState(() => dishes = suggestions);
  }

// body: (itemList.isEmpty)
//     ? SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             Icon(
//               Icons.hourglass_empty_rounded,
//               color: Colors.grey,
//               size: 60.0,
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'Empty List',
//               style: TextStyle(fontSize: 24.0, color: Colors.grey),
//             ),
//           ],
//         ),
//       )
//     : ListView.builder(
//         itemCount: itemList.length,
//         itemBuilder: (context, index) {
//           final item = itemList[index];
//           return Padding(
//             padding: (index == 0)
//                 ? const EdgeInsets.symmetric(vertical: 20.0)
//                 : EdgeInsets.only(bottom: 20.0),
//             child: Slidable(
//               key: Key('$item'),
//               endActionPane:
//                   ActionPane(motion: const ScrollMotion(), children: [
//                 SlidableAction(
//                   onPressed: (Context) {
//                     setState(() {
//                       itemList.removeAt(index);
//                     });
//                   },
//                   backgroundColor: Colors.red,
//                   icon: Icons.delete_outline,
//                   borderRadius: BorderRadius.circular(20.0),
//                 )
//               ]),
//               child: Container(
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 20.0),
//                   padding: const EdgeInsets.all(10.0),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 1.0,
//                           spreadRadius: 1.0,
//                           color: Colors.grey.shade400,
//                         ),
//                       ]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(10.0),
//                         child: Image.asset(
//                           item['image']!,
//                           width: 200,
//                           height: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(width: 10.0),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             item['title']!,
//                             style: const TextStyle(
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   )),
//             ),
//           );
//         },
//       ),
}
