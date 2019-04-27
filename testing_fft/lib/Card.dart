import 'package:flutter/material.dart';
import 'package:testing_fft/helper.dart';

class CardProduct extends StatelessWidget {
  final Color baseColor;
  final double height;
  final double width;
  final Widget name;
  final String imageUrl;
  final String priceInK;
  final String rating;
  final IconData icon;

  const CardProduct({
    Key key,
    @required this.baseColor,
    this.height = 300,
    this.width = 200,
    this.name,
    this.priceInK,
    this.rating,
    this.icon,
    this.imageUrl,
  })  : assert(baseColor != null),
        assert(height != null),
        assert(width != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width + 10,
      padding: const EdgeInsets.all(5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: baseColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 15,
                    left: 15,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 50.0),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.scaleDown,
                    ),
                  )),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomCenter,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00FFFFFF),
                              Color(0x33FFFFFF),
                              Color(0x77FFFFFF),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Text(
                              "Rp",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[200]),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              priceInK,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              "/",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[200]),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              rating,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            icon,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Tambah",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            name == null ? Container() : name
          ],
        ),
      ),
    );
  }
}

class CardStacked extends StatelessWidget {
  final ScrollController scrollController;
  final String imageBg;
  final String userImage;
  final String userName;
  final String location;
  final String rating;
  final String locationName;
  final String shortDesc;

  CardStacked({Key key, this.scrollController, this.imageBg, this.userImage, this.userName, this.location, this.rating, this.locationName, this.shortDesc}) : super(key: key) {
    if (scrollController != null) {
      scrollController.addListener(_listenScroll);
    }
  }

  _listenScroll() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 300,
      height: 400,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 30,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    color: Color(0x77000000)
                  )
                ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(imageBg))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                                image: NetworkImage(userImage),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            H3(userName, color: Colors.white,),
                            Caption(location, color: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  H1(rating, color: Colors.white,)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 70,
            right: 30,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 1),
                      blurRadius: 5,
                      color: Color(0x55000000)
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  H3(locationName),
                  Caption(shortDesc),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
