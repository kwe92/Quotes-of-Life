import 'package:flutter/material.dart';
import 'package:quotes_of_life/structure/quotes.dart';
import 'package:quotes_of_life/structure/quoteCard.dart';

// StatefulWidget() is a widget that has a mutable state combined with State.setState to modify the State
// A constellation of other widgets are nested within the StatefulWidget that define the UI
// StatefulWidgets allow the UI to change in response to some event like clicking a button
// A class that extends/inherits from StatefulWidget is immutable
// A sub-class that inherits from StatefulWidget should override createState()
// A class that extends the newly created StatefulWidget's State is needed
// And a second class must be defined and returned by the overridden createState()
// Since the class that extends/inherits from StatefulWidget is immutable
// The second class that extends the State of the StatefulWidget has a buid function
// This build function should be overridden like a StatelessWidget

class PhilosophyQuotesPage extends StatefulWidget {
  @override
  PhilosophyQuotesPageState createState() {
    return PhilosophyQuotesPageState();
  }
}

class PhilosophyQuotesPageState extends State<PhilosophyQuotesPage> {
  List<Quote> quoteList = [
    Quote(
      'Marcus Aurelius',
      'Because your own strength is unequal to the task, do not assume that it is beyond the powers of man; but if anything is within the powers and province of men, believe that it is within your own compass also.',
      authorImg: 'assets/The-Triumph-Of-Marcus-Aurelius-Ad-121-180.jpeg',
    ),
    Quote(
      'Epictetus',
      'Man is not worried by real problems so much as by his imagined anxieties about real problems.',
      authorImg: 'assets/Epictetus.png',
    ),
    Quote(
      'Alan Watts',
      'There are no wrong feelings but there maybe wrong actions.',
      authorImg: 'assets/Primordial.jpeg',
    ),
    Quote('Friedrich Niezsche',
        'You have your way. I have my way. As for the right way, the correct way, the only way, it does not exist.',
        authorImg: 'assets/Friedrich-Nietzsche.jpeg'),
  ];
  List<Quote> quoteList2 = [
    Quote(
      'Socrates',
      'Strong minds discuss ideas, average minds discuss events, weak minds discuss people.',
      authorImg: 'assets/Death_of_Socrates.jpeg',
    ),
    Quote(
      'Jordan Peterson',
      "When you start to realise how much of what you've constructed of yourself is based on deception and lies, that is a horrifying realisation.",
      authorImg: 'assets/JP.jpeg',
    ),
    Quote(
      'Socrates',
      'The only good is knowledge and the only evil is ignorange.',
      authorImg: 'assets/Thinking-Socrates.jpeg',
    ),
    Quote('Plato', 'The beginning is the most important part of the work.',
        authorImg: 'assets/Plato-and-Aristotle.jpeg'),
  ];

  List<Quote> quoteList3 = [
    Quote(
      'Homer',
      'The journey is the thing.',
      authorImg: 'assets/Homer.jpeg',
    ),
    Quote(
      'Aristotle',
      'Excellence is never an accident. It is always the result of high intention, sincere effort, and intelligent execution; it represents the wise choice of many alternatives - choice, not chance, determines your destiny.',
      authorImg: 'assets/Aristotle.jpeg',
    ),
    Quote(
      'Achilles',
      "We're mortals any moment might be our last. Everything is more beautiful because we're doomed. You will never be lovelier than you are now. We will never be here again.",
      authorImg: 'assets/Achilles.jpeg',
    ),
    Quote(
      'Nelson Mandela',
      'Resentment is like drinking poison and then hoping it will kill your enemies.',
      authorImg: 'assets/poison.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              quoteList
                  .map(
                    (q) => QuoteCard(q, () {
                      setState(() {
                        quoteList.add(q);
                        quoteList.remove(q);
                      });
                    }),
                  )
                  .first,
              quoteList2
                  .map(
                    (q) => QuoteCard(q, () {
                      setState(() {
                        quoteList2.add(q);
                        quoteList2.remove(q);
                      });
                    }),
                  )
                  .first,
              quoteList3
                  .map(
                    (q) => QuoteCard(q, () {
                      setState(() {
                        quoteList3.add(q);
                        quoteList3.remove(q);
                      });
                    }),
                  )
                  .first,
            ],
          ),
        ),
      ),
    );
  }
}
