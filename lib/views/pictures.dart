import 'dart:convert';
import 'package:flutter_first_steps/widgets/app_bar_progress_indicator.dart';
import 'package:flutter_first_steps/widgets/fab.dart';
import 'package:flutter_first_steps/widgets/photo.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';
import 'package:flutter_first_steps/models/photo.dart';

class Pictures extends StatefulWidget {
  const Pictures({Key? key}) : super(key: key);

  @override
  PicturesState createState() => PicturesState();
}

class PicturesState extends State<Pictures> {
  List<Picture> photos = [];
  var _loading = false;

  Future<void> fetchAlbum() async {
    setState(() {
      _loading = true;
    });
    final response = await http.get(Uri.parse(
      'https://jsonplaceholder.typicode.com/photos?_limit=6',
    ));
    if (response.statusCode == 200) {
      var data =
          jsonDecode(response.body).map((photo) => Picture.fromJson(photo));
      setState(() {
        for (Picture photo in data) {
          photos.add(photo);
        }
        _loading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
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
        child: photos.isEmpty && !_loading
            ? const Center(
                child: Text(
                  "Для загрузки картинок, нажмите кнопку",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              )
            : ListView(
                children: photos
                    .map((photo) => Photo(
                          photo.url,
                          photo.title,
                        ))
                    .toList(),
              ),
      ),
      floatingActionButton: FAB(onPressed: () {
        Future.delayed(Duration.zero, fetchAlbum);
      }),
    );
  }
}
