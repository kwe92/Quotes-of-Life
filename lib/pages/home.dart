import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quotes of Life',
            style: TextStyle(
              fontSize: 46.0,
              fontFamily: 'Allura',
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.all(
                    0.0,
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/Achilles.jpeg'),
                      const Text(
                        'Philosophy Quotes',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontFamily: 'PTserif',
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/PhilosophyQuotes');
                },
              ),

              /*
              
              GestureDetector(
                child: Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.all(
                    0.0,
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/Achilles.jpeg'),
                      const Text(
                        'Love Quotes',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontFamily: 'PTserif',
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/PhilosophyQuotes');
                },
              )
              
              */
            ],
          ),
        ),
      ),
    );
  }
}
