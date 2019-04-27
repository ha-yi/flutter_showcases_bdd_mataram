import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testing_fft/Card.dart';
import 'package:testing_fft/NewsItem.dart';
import 'package:testing_fft/helper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _ct;
  PageController _pct = PageController();

  @override
  void initState() {
    _ct = ScrollController();
    _ct.addListener(_listenScroll);
    super.initState();
  }

  var _position = 200.0;

  _listenScroll() {
    setState(() {
      _position = (_ct.offset * 0.7) + 200;
    });
  }

  var _selected = 0;
  var _sh;

  _setSelected(int pos) {
    setState(() {
      _pct.animateToPage(pos, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
      _selected = pos;
      _ct.animateTo(_sh, duration: Duration(milliseconds: 1000), curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    _sh = MediaQuery.of(context).size.height;
    var _cardsPos = _position + (_sh / 2.5) - 70;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        controller: _ct,
        physics: ClampingScrollPhysics(),
        child: Container(
          width: double.infinity,
          height: _sh * 1.5,
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Positioned.fill(
                  child: Container(
                color: Colors.blue,
              )),
              Positioned(
                top: _position * 1.3 - 160,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Geopark",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "R I N J A N I",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: _position + (_sh / 2.5) - 20,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  child: PageView.builder(
                    pageSnapping: true,
                    controller: _pct,
                    onPageChanged: (pos) {
                      setState(() {
                        _selected = pos;
                      });
                    },
                    itemBuilder: (context, position) {
                      return _buildPage(context, position);
                    },
                    itemCount: 3,
                  ),
                ),
              ),
              Positioned(
                top: _position,
                left: 0,
                right: 0,
                child: Image.asset(
                  "images/rinjani.png",
                  fit: BoxFit.fitHeight,
                  width: MediaQuery.of(context).size.width * 1.5,
                  height: (_sh / 2.5),
                ),
              ),
              Positioned(
                top: _cardsPos,
                height: 140,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: () => _setSelected(0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: _selected == 0 ? 90 : 60,
                          width: _selected == 0 ? 90 : 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color:
                                _selected == 0 ? Colors.blue : Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.language,
                              size: _selected != 0 ? 30 : 50,
                              color: _selected != 0 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: () => _setSelected(1),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: _selected == 1 ? 90 : 60,
                          width: _selected == 1 ? 90 : 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color:
                                _selected == 1 ? Colors.blue : Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.nature_people,
                              size: _selected != 1 ? 30 : 50,
                              color: _selected != 1 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: () => _setSelected(2),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: _selected == 2 ? 90 : 60,
                          width: _selected == 2 ? 90 : 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color:
                                _selected == 2 ? Colors.blue : Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.photo_library,
                              size: _selected != 2 ? 30 : 50,
                              color: _selected != 2 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, int position) {
    if (position == 0) return _pageNews(context);
    if (position == 1) return _pageSpots(context);
    else return _pageGallery(context);
  }

  Widget _pageNews(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 90, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NewsItem(
              title: "Pendakian 2019 Buka kembali",
              imageUrl: "https://media.travelingyuk.com/wp-content/uploads/2017/09/Sekarang-ada-Ojek-di-Sembalun.jpg",
              favCount: "134",
              readerCount: "126k",
              shareCount: "459",
              shortDesc: "Kabar gembira untuk para pendaki guning rinjani, jalur pendakian Sembalun telah dibuka kembali mulai April ini.",
            ),

            NewsItem(
              title: "Pasca Gempa",
              imageUrl: "https://media.travelingyuk.com/wp-content/uploads/2017/09/Sekarang-ada-Ojek-di-Sembalun.jpg",
              favCount: "134",
              readerCount: "126k",
              shareCount: "459",
              shortDesc: "Kabar gembira untuk para pendaki guning rinjani, jalur pendakian Sembalun telah dibuka kembali mulai April ini.",
            ),

          ],
        ),
      ),
    );
  }

  Widget _pageSpots(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80, left: 20),
              child: H1("Rekomendasi"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CardStacked(
                    userImage: "http://1.bp.blogspot.com/-sLo2yjGJjrg/UbX4TWBXEHI/AAAAAAAANhY/Qpg1KuIq1HM/s1600/beautiful+girl+wallpapers+7.jpg",
                    imageBg: "https://www.anekawisata.com/wp-content/uploads/2015/06/Kebun-Strawberry-Bandung.jpg",
                    userName: "Laila Chan",
                    locationName: "Strawberry Garden",
                    rating: "4.1",
                    location: "Sembalun",
                    shortDesc: "Kunjungi kebun strawberry di sembalun, nikmati manis dan kecutnya strawberry.",
                  ),

                  CardStacked(
                    userImage: "https://www.teninsider.com/wp-content/uploads/2015/08/masami-nagasawa-jpgirl.jpg",
                    imageBg: "https://www.gardendesign.com/pictures/images/973x490Exact_0x58/site_3/colorful-flowers-terraced-hillside-garden-design_11850.jpg",
                    userName: "Embun Senja",
                    locationName: "Flower Garden",
                    rating: "4.8",
                    location: "Toreant",
                    shortDesc: "Kebun bunga tercantik di ujung timur pulau lombok",
                  ),
                  CardStacked(
                    userImage: "https://www.teninsider.com/wp-content/uploads/2015/08/masami-nagasawa-jpgirl.jpg",
                    imageBg: "https://www.romanticasheville.com/sites/default/files/images/basic_page/Asheville_Waterfalls.jpg",
                    userName: "Embun Senja",
                    locationName: "Rinjani Waterfall",
                    rating: "4.5",
                    location: "Toreant",
                    shortDesc: "Air terjun sangat indah..",
                  ),
//            CardStacked(),
//            CardStacked(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pageGallery(BuildContext context) {

  }
}
