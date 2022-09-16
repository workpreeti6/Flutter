import 'package:flutter/material.dart';
import 'Quote.dart';
import 'Quote_Card.dart';
void main() {
  return runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => QuoteListState();
}
class QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author:'Li Chung', text:'There is no greater agony than bearing an untold story inside you.'),
    Quote(author:'Li Mung', text:'I love deadlines. I love the whooshing noise they make as they go by.'),
    Quote(author:'Li Shang', text:'There is nothing to writing. All you do is sit down at a typewriter and bleed.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        elevation: 0.0,
      ),
      body:Column(
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
