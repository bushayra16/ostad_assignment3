import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.of(context).size.width < 800 ? NavigationDrawer() : null,
      appBar: AppBar(
        title: Text('HUMMING BIRD .'),
        actions: MediaQuery.of(context).size.width >= 800
            ? [
          TextButton(
            onPressed: () {},
            child: Text('Episodes', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('About', style: TextStyle(color: Colors.black)),
          ),
        ]
            : null,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return DesktopLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'In this course we will go over the basics of using\n'
                    'Flutter Web for development. Topics will include\n'
                    'Responsive Layout, Deploying, Font Changes,\n'
                    'Hover functionality, Modals and more.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  backgroundColor: Colors.greenAccent,
                ),
                child: Text('Join course'),
              ),
            ],
          ),
          Placeholder(
            fallbackHeight: 200,
            fallbackWidth: 200,
          ), // Placeholder for an image or any other content
        ],
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'FLUTTER WEB.\nTHE BASICS',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'In this course we will go over the basics of using\n'
                'Flutter Web for development. Topics will include\n'
                'Responsive Layout, Deploying, Font Changes,\n'
                'Hover functionality, Modals and more.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 32),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                backgroundColor: Colors.greenAccent,
              ),
              child: Text('Join course'),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SKILL UP NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'TAP HERE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Episodes'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
