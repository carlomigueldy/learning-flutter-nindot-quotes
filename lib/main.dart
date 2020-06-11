import 'package:flutter/material.dart';
import 'package:quotes/QuoteCard.dart';
import 'package:quotes/Quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> quotes = [
    Quote(author: 'Marc', text: 'Persistence is very important. You should not give up unless you are forced to give up.'),
    Quote(author: 'Zuckerberg', text: 'Be yourself; everyone else is already taken.'),
    Quote(author: 'Steve', text: 'To live is the rarest thing in the world. Most people exist, that is all.'),
    Quote(author: 'Jobs', text: 'True friends stab you in the front.'),
    // Quote(author: 'Hey', text: 'Women are made to be Loved, not understood.'),
    // Quote(author: 'Elon Musk', text: 'Be the change that you wish to see in the world.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Nindot Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}

