import 'quotes.dart';

class QuotesList {
  List<Quote> quotesList = [
    Quote(
      'Epictetus',
      'Man is not worried by real problems so much as by his imagined anxieties about real problems',
      authorImg: 'assets/Epictetus.png',
    ),
    Quote(
      'Marcus Aurelius',
      'Because your own strength is unequal to the task, do not assume that it is beyond the powers of man; but if anything is within the powers and province of men, believe that it is within your own compass also',
      authorImg: 'assets/The-Triumph-Of-Marcus-Aurelius-Ad-121-180.jpeg',
    ),
    Quote(
      'Alan Watts',
      'There are no wrong feelings but there maybe wrong actions',
      authorImg: 'assets/Primordial.jpeg',
    ),
    Quote('Friedrich Niezsche',
        'You have your way. I have my way. As for the right way, the correct way, the only way, it does not exist',
        authorImg: 'assets/Friedrich-Nietzsche.jpeg'),
  ];
}
