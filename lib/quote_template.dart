import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function()? delete;
  QuoteCard({required this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800]
              ),
            ),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14
              ),
            ),
            TextButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete quote')
            )
          ],
        ),
      ),
    );
  }
}