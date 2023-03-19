import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // Home page hero image
    const alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    // welcome text title
    const welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.white,
        ),
      ),
    );

    // Sample text
    const lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );

    // Container for all the home page widget
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ],
        ),
      ),
      child: Column(
        children: const [
          alucard,
          welcome,
          lorem,
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
