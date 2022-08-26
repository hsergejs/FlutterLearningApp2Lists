import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: ListQuote(),
));

class ListQuote extends StatefulWidget {
  @override
  _ListQuoteState createState() => _ListQuoteState();
}

class _ListQuoteState extends State<ListQuote> {

  List<Quote> quotes = [
    Quote(author: 'Author 1', quoteText: 'Quote 1'),
    Quote(quoteText: 'Quote 2', author: 'Author 2'),
    Quote(author: 'Author 3', quoteText: 'Quote 3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //children: quotes.map((quote) => Text(quote)).toList(), //iterate through list of String and return as list .toList
        //children: quotes.map((quote) => Text('${quote.quoteText} - ${quote.author}')).toList(), //iteration in array with Object Quote
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){ //passed parameter as function in quote_card
                setState(() {
                  quotes.remove(quote);
                });
            }
        )).toList(), //iterate using function to display
      ),
    );
  }
}


