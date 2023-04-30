import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skywallet/Modules/Models/News.dart';
import 'package:skywallet/Modules/Variables/Theme.dart';
import 'package:skywallet/Pages/SubMenus/BookmarkPop/GetBookmark.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool _isLoading = false;
  List<NewsModel> _newsList = [];

  @override
  void initState() {
    super.initState();
    _fetchNews();
  }

  Future<void> _fetchNews() async {
    setState(() {
      _isLoading = true;
    });

    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=90061ed66efc49149b27f7687e0ad6f7');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final articles = data['articles'] as List<dynamic>;
      final List<NewsModel> loadedNews = [];

      for (var article in articles) {
        loadedNews.add(NewsModel.fromJson(article));
      }

      setState(() {
        _newsList = loadedNews;
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to fetch news'),
        duration: Duration(seconds: 3),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: navbarBg,
          title: const Text('Berita'),
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const AlertDialog(
                  title: Text('AlertDialog Title'),
                  content: SizedBox(height: 300, child: GetBookmark()),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          color: whiteColor,
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: _newsList.length,
                  itemBuilder: (ctx, index) {
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _newsList[index].imageUrl.isNotEmpty
                              ? Image.network(_newsList[index].imageUrl)
                              : const SizedBox.shrink(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _newsList[index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(_newsList[index].description),
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ));
  }
}
