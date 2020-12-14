import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget { //stuful
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author:'Oscar Wilde', text:  'I have nothing to declare except my genius'),
    Quote(author:'Oscar Wilde', text:  'The truth is rarely pure and never simple'),
  ];

  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(// 변수 property에 접근하려면 {} 감싸야함
        children: quotes.map((quote) => quoteTemplate(quote)).toList(), // cycle through the list of data
      ),
    );
  }

}

class QuoteCard extends StatelessWidget {

  final Quote quote;// local var, final: not going to change overtime
  QuoteCard({this.quote})


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 템플렛 꽉 차게
          children: <Widget>[
            Text( // 인용구
              quote.text ,// '' 로 하는 거 아니니까 {}필요 없음
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              )
            ),
            SizedBox(height: 6.0),
            Text( // 작가
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color:Colors.grey[600],
              )
            ),
          ],
        ),
      ),
    );
  }
}
