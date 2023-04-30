import 'dart:convert';

class Bookmarkmodel {
  //Key
  int id; //Primary
  int idUser;
  String createdat;
  String namabookmark;

  Bookmarkmodel({
    this.id,
    this.idUser,
    this.createdat,
    this.namabookmark,
  });

  factory Bookmarkmodel.fromJson(Map<String, dynamic> map) {
    return Bookmarkmodel(
      id: map["id"],
      idUser: map["id_user"],
      createdat: map["createdat"],
      namabookmark: map["namabookmark"],
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     "archieve_name": archieveName,
  //     "id_user": idUser,
  //     "user_id": idUser
  //   }; //Check this again. for user id column in db!
  // }
}

List<Bookmarkmodel> BookmarkmodelFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Bookmarkmodel>.from(
      data['data'].map((item) => Bookmarkmodel.fromJson(item)));
}

// String BookmarkmodelToJson(Bookmarkmodel data) {
//   final jsonData = data.toJson();
//   return json.encode(jsonData);
// }
