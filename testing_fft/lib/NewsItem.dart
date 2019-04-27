import 'package:flutter/material.dart';
import 'package:testing_fft/helper.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String readerCount;
  final String shortDesc;
  final String imageUrl;
  final String favCount;
  final String shareCount;

  const NewsItem({Key key, this.title, this.readerCount, this.shortDesc, this.imageUrl, this.favCount, this.shareCount}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                    child: H2(title)
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Caption(readerCount),
                      Icon(Icons.remove_red_eye, color: Colors.grey,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25, right: 25, top: 10),
            child: BodyText(shortDesc),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    children: <Widget>[
                      Caption(favCount),
                      Icon(Icons.favorite_border, color: Colors.grey, size: 20,)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    children: <Widget>[
                      Caption(shareCount),
                      Icon(Icons.share, color: Colors.grey,size: 20,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
