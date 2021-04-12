import 'package:firebase_database/firebase_database.dart';

class Mamndyktardb {
  String key;
  String news_desc;
  String count;
  String link;
  String pair;
  String news_date;



  Mamndyktardb({this.news_desc, this.count, this.link, this.pair,this.news_date});

  Mamndyktardb.fromSnapshot(DataSnapshot snapshot)
      : news_date = snapshot.value["news_date"],
        news_desc = snapshot.value["news_desc"],
        count = snapshot.value["count"],
        link = snapshot.value["link"],
        pair = snapshot.value["pair"];

  toJson() {
    return {
      "news_desc": news_desc,
      "count": count,
      "link": link,
      "pair": pair,
      "news_date": news_date,
    };
  }
}
