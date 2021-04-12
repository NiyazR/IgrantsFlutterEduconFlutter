import 'package:firebase_database/firebase_database.dart';

class Newsdb {
  String key;
  String news_desc;
  String news_title;
  String link;
  String news_img;
  String news_date;
  String url;


  Newsdb({this.news_desc, this.news_title, this.link, this.news_img,this.news_date,this.url});

  Newsdb.fromSnapshot(DataSnapshot snapshot)
      : news_date = snapshot.value["news_date"],
        news_desc = snapshot.value["news_desc"],
        news_title = snapshot.value["news_title"],
        link = snapshot.value["link"],
        news_img = snapshot.value["news_img"],
        url = snapshot.value["url"];

  toJson() {
    return {
      "news_desc": news_desc,
      "news_title": news_title,
      "link": link,
      "news_img": news_img,
      "news_date": news_date,
      "url" : url,
    };
  }
}
