import 'package:http/http.dart' show Client;
import 'package:skywallet/Modules/Models/Bookmark.dart';

class BookmarkController {
  final String baseUrl = "http://127.0.0.1:8000";
  Client client = Client();

  Future<List<Bookmarkmodel>> getAllbookmark() async {
    final response = await client.get(Uri.parse("$baseUrl/api/v1/bookmark/4"));
    if (response.statusCode == 200) {
      return BookmarkmodelFromJson(response.body);
    } else {
      return null;
    }
  }
}
