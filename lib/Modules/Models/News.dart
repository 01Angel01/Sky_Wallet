class NewsModel {
  final String title;
  final String description;
  final String imageUrl;

  NewsModel({this.title, this.description, this.imageUrl});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      imageUrl: json['urlToImage'] ?? "",
    );
  }
}
