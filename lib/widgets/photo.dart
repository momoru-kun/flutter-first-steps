import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final String url;
  final String title;

  const Photo(this.url, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 10,
                ),
                height: 64,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            )),
      ),
    );
  }
}
