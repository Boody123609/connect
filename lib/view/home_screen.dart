import 'package:connect/view/pages/home_page.dart';
import 'package:connect/view/pages/ideas.dart';
import 'package:connect/view/pages/my_network.dart';
import 'package:connect/view/pages/notifcation.dart';
import 'package:connect/view/pages/post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  final  pages = [
    HomePage(),
    MyNetworkPage(),
    PostPage(),
    NotificationsPage(),
    IdeasPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,

        backgroundColor: Colors.white,
        onTap: (value){
          index=value;

          setState(() {
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(

              icon: Icon(Icons.groups), label: "My Network"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: "Ideas"),
        ],
      ),
    );
  }
}
