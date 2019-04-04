import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ));

class MainScreen extends StatefulWidget {
  final List<Widget> contents = [
    ContentWidget(),
    ContentWidget(),
    ContentWidget(),
    ContentWidget(),
    ContentWidget(),
  ];

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        title: Text(
          'Quick Wireframe',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                title: Text(''),
                icon: Icon(
                  Icons.home,
                  color: Colors.black54,
                )),
            BottomNavigationBarItem(
                title: Text(''),
                icon: Icon(
                  Icons.search,
                  color: Colors.black54,
                )),
            BottomNavigationBarItem(
                title: Text(''),
                icon: Icon(
                  Icons.add,
                  color: Colors.black54,
                )),
            BottomNavigationBarItem(
                title: Text(''),
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black54,
                )),
            BottomNavigationBarItem(
                title: Text(''),
                icon: Icon(
                  Icons.contacts,
                  color: Colors.black54,
                )),
          ]),
      body: widget.contents[_currentIndex],
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 16.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Material(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset('assets/nature.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Text(
              'Beautiful Nature',
              style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black87,
//                    fontWeight: FontWeight.bold,
                  fontFamily: 'SegoeUI'),
            ),
            SizedBox(
              height: 18.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Whether you prefer to draw interfaces on paper, whiteboards, or napkins, Uizard transforms your wireframes to Sketch files according to your very own style guide 🎨',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
                strutStyle: StrutStyle(height: 1.2),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text('Demo by Pete Houston'),
            SizedBox(
              height: 28.0,
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width - 32.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.black,
                elevation: 1.0,
                child: Text(
                  'BUTTON',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SegoeUI',
                      letterSpacing: 3.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
