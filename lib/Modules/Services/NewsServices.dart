import 'package:http/http.dart' show Client;
import 'package:skywallet/Modules/Models/News.dart';

class NewsController {
  final String baseUrl =
      "https://newsapi.org/v2/top-headlines?country=id&apiKey=90061ed66efc49149b27f7687e0ad6f7";
  Client client = Client();

  Future<List<NewsModel>> getAllbookmark() async {
    final response = await client.get(Uri.parse("$baseUrl/api/v1/bookmark/4"));
    if (response.statusCode == 200) {
      //
    } else {
      return null;
    }
  }
}
