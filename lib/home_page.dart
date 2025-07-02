import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //used for tabs
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.search),
            SizedBox(width: 5),

            PopupMenuButton(//popup menue for threee dots
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Privacy")),
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("Logout")),
              ],
            ),
            SizedBox(width: 5),
          ],
          bottom: TabBar(
            tabs: [
              //create tab
              Tab(child: Icon(Icons.camera_alt_rounded)),
              Tab(child: Text("Chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("Calls")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt_outlined),
            
            ListView.builder(
              itemCount: 100,
        itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Justin Touch"),
                  subtitle: Text("What are you doi'n?"),
                  trailing: Text("2:56pm"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg"),
                  ),

                );
              
            },),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Carry Minati"),
                  subtitle: Text("38m ago"),
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      border: Border.all(color: Colors.green,
                      width: 3)
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg"),
                    ),
                  ),

                );

              },),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Sameer Ahmed"),
                  subtitle: Text(index % 2 == 0 ? "You missed a voice call!" : "You missed a video call!"),
                  trailing: Icon(index % 2 == 0 ? Icons.call_missed : Icons.videocam_off_outlined),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/5378700/pexels-photo-5378700.jpeg"),
                  ),

                );

              },),
          ],
        ),
      ),
    );
  }
}
