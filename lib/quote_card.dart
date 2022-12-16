import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
      child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.format_quote_outlined),
                title: Text('${quote.text}'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('${quote.author}'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: delete,
                      child: Row(
                        children: [
                          Icon(Icons.delete),
                          SizedBox(width: 10.0),
                          Text("Delete"),
                        ],
                      )),
                ],
              )
            ],
          )),
    );
  }
}
