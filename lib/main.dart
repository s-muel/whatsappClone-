// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(18, 140, 126, 1),
          title: const Text("WhatsApp"),
          // centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Chat"),
              Tab(text: "Status"),
              Tab(text: "Call")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amberAccent,
                        radius: 30,
                      ),
                      title: Text("Samuel Essuman"),
                      subtitle: Row(
                        children: const [
                          Icon(
                            Icons.done_all,
                            size: 20,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Can you make it"),
                        ],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Text("11:45"),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                              child: Text("1"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text("hello whatsapp"),
            ),
            Center(
              child: Text("hello whatsapp"),
            ),
            Center(
              child: Text("hello whatsapp"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.message,
          ),
          backgroundColor: const Color.fromRGBO(18, 140, 126, 1),
        ),
      ),
    );
  }
}
