import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;

  QuoteCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 6.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        margin: const EdgeInsets.fromLTRB(3.0, 8.0, 3.0, 0),
        //color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.asset(quote.authorImg, fit: BoxFit.cover)),
              const SizedBox(height: 5.0),
              Text(
                quote.quote,
                style: const TextStyle(fontSize: 18.0, fontFamily: 'PTSerif'),
              ),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '- ' + quote.author,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        fontFamily: 'Allura'),
                  ),
                  IconButton(
                    tooltip: 'Replace quote with the next quote in the list.',
                    onPressed: () {
                      delete();
                    },
                    icon: const Icon(Icons.arrow_right,
                        size: 40.0, color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
