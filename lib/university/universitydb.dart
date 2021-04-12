import 'package:firebase_database/firebase_database.dart';

class Universitydb {
  String univerPhone;
  String univerName;
  String univerCode;
  String link;
  String univerImage;
  String univerLocation;
  Stream key;
  String url;
  String professions;



  Universitydb({this.univerName, this.univerCode,this.professions, this.link, this.univerImage,this.univerLocation,this.univerPhone,this.url});

  Universitydb.fromSnapshot(DataSnapshot snapshot)
      : univerLocation = snapshot.value["univerLocation"],
        univerName = snapshot.value["univerName"],
        univerCode = snapshot.value["univerCode"],
        link = snapshot.value["link"],
        univerPhone = snapshot.value["univerPhone"],
        url = snapshot.value["url"],
        univerImage= snapshot.value["univerImage"],
        professions = snapshot.value["professions"];
  toJson() {
    return {
      "univerPhone":univerPhone,
      "univerName": univerName,
      "univerCode": univerCode,
      "link": link,
      "url" : url,
      "univerImage": univerImage,
      "univerLocation": univerLocation,
      "professions": professions,
    };
  }
}
