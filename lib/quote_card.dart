import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  // data doesn't exist here

  final Quote quote; // local var, final: not going to change overtime
  final Function delete;

  QuoteCard(
      {this.quote,
      this.delete});
  // 여기는 데이터 없으니까 데이터가 있는 main에서 에서 작성해야 함.. 호출될때 마다 호출되는 거

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 템플렛 꽉 차게
          children: <Widget>[
            Text(
                // 인용구
                quote.text, // '' 로 하는 거 아니니까 {}필요 없음
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 6.0),
            Text(
                // 작가
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text('delete'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
