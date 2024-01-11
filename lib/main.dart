// ignore_for_file: todo

import 'package:flutter/material.dart';
import 'package:quotes_of_life/pages/philosophy_quotes_page.dart';
import 'package:quotes_of_life/pages/home.dart';

/*
import 'package:quotes_of_life/structure/quotes.dart';
import 'package:quotes_of_life/structure/quoteCard.dart';
import 'package:quotes_of_life/structure/quoteLists.dart';
*/

// TODO: Populate one card with the ability to scroll left and right also change the card with the next arrow\
// TODO: Figure out the cost of connecting to an API
// TODO: Connect to a quotes API
// TODO: Figure out how to add artwork for each quote
// TODO: Figure out what my backend database will be
// TODO: Figure out user login
// TODO: Think about other user functionality like sharing, saving, rating, adding comments for their favorite authors, recommendations, daily notifications
// TODO: Figure out how to be simple but effective
// TODO: Figure out how to build themes to not repeat code
// TODO: What area should i focus on, mindfulness?
// TODO: Make the app cross platform?
// TODO: Add cool animations when quotes pop up?

void main() {
  // runApp() runs the root widget and attaches the widget to the screen
  // and if called again detaches the current widget tree and
  // compares the current widget tree with the new widget tree and applies changes
  // MaterialApp() used to wrap commonly used widgets together that are required for material app design
  runApp(
    MaterialApp(
      initialRoute: '/Home',
      routes: {
        '/Home': (context) => Home(),
        '/PhilosophyQuotes': (context) => PhilosophyQuotesPage(),
      },
    ),
  );
}
