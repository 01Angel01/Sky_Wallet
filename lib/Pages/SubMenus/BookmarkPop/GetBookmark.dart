import 'package:flutter/material.dart';
import 'package:skywallet/Modules/Models/Bookmark.dart';
import 'package:skywallet/Modules/Services/BookmarkServices.dart';

class GetBookmark extends StatefulWidget {
  const GetBookmark({Key key}) : super(key: key);

  @override
  _GetBookmarkState createState() => _GetBookmarkState();
}

class _GetBookmarkState extends State<GetBookmark>
    with TickerProviderStateMixin {
  BookmarkController apicontroller;

  @override
  void initState() {
    super.initState();
    apicontroller = BookmarkController();
  }

  @override
  Widget build(BuildContext context) {
    //double fullHeight = MediaQuery.of(context).size.height;
    //double fullWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      maintainBottomViewPadding: false,
      child: FutureBuilder(
        future: apicontroller.getAllbookmark(),
        builder: (BuildContext context,
            AsyncSnapshot<List<Bookmarkmodel>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                  "Something wrong with message: ${snapshot.error.toString()}"),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            List<Bookmarkmodel> contents = snapshot.data;
            return _buildListView(contents);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildListView(List<Bookmarkmodel> contents) {
    //double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Column(
        children: contents.map((content) {
      return SizedBox(
        height: 30,
        child: Text(
          content.namabookmark,
          style: const TextStyle(color: Colors.black),
        ),
      );
    }).toList());
  }
}
