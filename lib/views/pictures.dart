import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:incrementally_loading_listview/incrementally_loading_listview.dart';
import 'package:flutter_first_steps/widgets/app_bar_progress_indicator.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';
import 'package:flutter_first_steps/widgets/photo.dart';
import 'package:flutter_first_steps/models/photo.dart';

class Pictures extends StatefulWidget {
  const Pictures({Key? key}) : super(key: key);

  @override
  PicturesState createState() => PicturesState();
}

class PicturesState extends State<Pictures> {
  List<Picture> photos = [];
  var _loading = false;
  var _page = 0;

  Future<void> _fetchPhotos() async {
    final response = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/photos?_limit=10&page=$_page',
      ),
    );
    if (response.statusCode == 200) {
      photos.addAll(
          jsonDecode(response.body).map((photo) => Picture.fromJson(photo)));

      setState(() {
        _loading = false;
      });
      _page++;
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        "Асинхронный запрос",
        bottom: _loading
            ? const AppBarProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.yellow,
                ),
              )
            : null,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: IncrementallyLoadingListView(
            hasMore: () => photos.length <= 6000,
            itemCount: () => photos.length,
            loadMore: () async {
              await _fetchPhotos();
            },
            loadMoreOffsetFromBottom: 2,
            itemBuilder: (context, i) => Photo(photos[i]),
          )),
    );
  }
}
