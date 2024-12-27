import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> pfp = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
    "11.jpg",
    "12.jpg",
    "13.jpg",
    "14.jpg",
    "15.jpg",
    "16.jpg",
    "17.jpg",
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Chats",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
            color: Colors.black,
          ),
        ),
        leading: Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Image.asset(
                "assets/pfp/new-chat.png",
                color: Colors.blueAccent,
                fit: BoxFit.fitHeight,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.only(
                  left: 16,
                  top: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.black54,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 85,
              margin: EdgeInsets.only(top: 8, bottom: 8, left: 16),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: 65,
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,
                              padding: EdgeInsets.all((index % 2 == 1) ? 2 : 0),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color.fromRGBO(51, 51, 51, 1),
                                border: (index % 2 == 0)
                                    ? Border.all(width: 0)
                                    : Border.all(
                                        color: Color.fromRGBO(0, 132, 255, 1),
                                        width: 3,
                                      ),
                              ),
                              child: ClipOval(
                                child: (index == 0)
                                    ? Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Color.fromRGBO(195, 195, 195, 1),
                                      )
                                    : Image.asset("assets/pfp/${pfp[index]}"),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: (index != 0) ? 18 : null,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9)),
                                  color: Colors.green,
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Your Story",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color:
                                (index % 2 == 1) ? Colors.black : Colors.black,
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: pfp.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                  CustomChip(label: "Home"),
                  SizedBox(
                    width: 95,
                  ),
                  CustomChip(label: "Channels"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.only(bottom: 10, right: 8),
                      leading: Stack(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Color.fromRGBO(51, 51, 51, 1),
                            ),
                            child: ClipOval(
                              child: Image.asset("assets/pfp/${pfp[index]}"),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: (index % 2 == 0) ? 18 : 18,
                              width: 18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                                color: Colors.green,
                                border:
                                    Border.all(color: Colors.black, width: 3),
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Imogen Poots",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      subtitle: Text(
                        "Sent a message",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Icon(
                        Icons.circle,
                        size: 13,
                        color: (index % 5 == 0)
                            ? Colors.blueAccent
                            : Colors.transparent,
                      ),
                    );
                  },
                  itemCount: 17,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Container(
          height: 50,
          color: Colors.white,
          padding: EdgeInsets.only(left: 80, right: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/pfp/mmessage.png",
                        color: Colors.black54,
                        fit: BoxFit.fitHeight,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    top: 2,
                    right: 0,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.5)),
                        color: Colors.redAccent,
                      ),
                      child: Center(
                        child: Text(
                          "4",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Image.asset(
                    "assets/pfp/navigation.png",
                    color: Colors.black54,
                    fit: BoxFit.fitHeight,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Image.asset(
                    "assets/pfp/people.png",
                    color: Colors.black54,
                    fit: BoxFit.fitHeight,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Image.asset(
                    "assets/pfp/camera.png",
                    color: Colors.black54,
                    fit: BoxFit.fitHeight,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;

  const CustomChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.grey),
      ),
    );
  }
}
