import 'package:flutter/material.dart';
import 'Quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote? quote;
  final Function? delete;
  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.stretch,
          children: [
            Text('${quote?.text}',
              style: TextStyle(
                  fontSize: 16.0,
                  color:Colors.black45
              ),
            ),
            SizedBox(height: 18),
            Text('- ${quote?.author}',
              style: TextStyle(
                  fontSize: 11.0,
                  fontWeight:FontWeight.bold,
                  color:Colors.black45
              ),

            ),
            SizedBox(height: 0),
            IconButton(
                onPressed: (){delete;},
                icon: Icon(Icons.delete),
                iconSize: 20,
                color: Colors.lightBlue,
                tooltip: 'delete quote'
            )
          ],
        ),
      ),
    );
  }
}