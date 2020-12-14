class Quote {

  String text;
  String author;

  Quote({this.text, this.author});

}

//{} name parameter--> 순서 바뀌어도 괜찮
//Quote myquote = Quote(text:'this is txt',author:'me');

/* name 파라미터 없을 떄

  Quote(String text, String author){
    this.text = text;
    this.author = author;
  }

  -->
  Quote mine = Quote('this is text', 'me');
*/