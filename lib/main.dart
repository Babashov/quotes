import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_template.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Quote Text 01',author: 'Quote Author 01 Quote Author 01 Quote Author 01'),
    Quote(text: 'Quote Text 02',author: 'Quote Author 02 Quote Author 02 Quote Author 02'),
    Quote(text: 'Quote Text 03',author: 'Quote Author 03 Quote Author 03 Quote Author 03'),
    Quote(text: 'Quote Text 04',author: 'Quote Author 04 Quote Author 04 Quote Author 04'),
    Quote(text: 'Quote Text 05',author: 'Quote Author 05 Quote Author 05 Quote Author 05'),
    Quote(text: 'Quote Text 06',author: 'Quote Author 06 Quote Author 06 Quote Author 06'),
    Quote(text: 'Quote Text 07',author: 'Quote Author 07 Quote Author 07 Quote Author 07'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) => QuoteCard(
              quote: quote,
              delete:(){
                setState(() {
                  quotes.remove(quote);
                });
              }
          )).toList()
        ),
      ),
    );
  }
}

