import 'package:flutter/material.dart';
import 'package:music_player/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //Create a logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          //home title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: () {
                //close drawer
                Navigator.pop(context);
              },
            ),
          ),

          //setting title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
            child: ListTile(
              title: const Text("S E T T I N G"),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
