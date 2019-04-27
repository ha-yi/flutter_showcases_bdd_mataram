import 'package:bl_ft/screen/ProductCategory.dart';
import 'package:bl_ft/screen/ProductPromo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements  DataListener<Promo> {
  Color rubyColor = Color.fromARGB(255, 215, 17, 73);

  String _error;
  var data;
  var isLoaded;

  _calculateData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(Icons.chat_bubble),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: Icon(Icons.notifications),
          )
        ],
        backgroundColor: rubyColor,
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.all(5),
            helperText: "Bukanlapak",
            hintText: "Bukanlapak",
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Pengguna baru? Cek di sini.",
                    style: TextStyle(color: rubyColor, fontSize: 12),
                  ),
                  Icon(Icons.close)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.account_balance_wallet),
                        Text(
                          "Rp. 100 Juta",
                          style: TextStyle(
                              color: rubyColor, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey[400],
                        ),
                        Text(
                          "TRASNFER",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "TOP UP",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 0,
              color: Colors.grey[400],
            ),
            Container(
              height: 150,
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Image.network(
                          "http://pin.anime.com/wp-content/uploads/2015/07/korilakkuma-sofa-1438376297nkg48.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Sofa Anime",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sale 70%",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "1 - 4 april 2019",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "* Hanya berlaku di app",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Color.fromARGB(88, 232, 234, 246),
                  ),
                  Positioned(
                    top: 40,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 5, right: 10, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: rubyColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "2",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "abad\nlagi",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 3, bottom: 3, left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(66, 99, 99, 99),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(10))),
                      child: GestureDetector(
                        child: Text("Lihat Semua Promo >",
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                        onTap: _onLoadPromo,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 8,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.brightness_1,
                            size: 6,
                            color: rubyColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.brightness_1,
                            size: 6,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.brightness_1,
                            size: 6,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.brightness_1,
                            size: 6,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.brightness_1,
                            size: 6,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.brightness_1,
                            size: 6,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // virtual product
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone_android),
                        Text("PULSA")
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.language),
                        Text("INTERNET")
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Icon(Icons.flash_on), Text("LISTRIK")],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Icon(Icons.train), Text("KERETA")],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Icon(Icons.flight), Text("PESAWAT")],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text("CICILAN")
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Icon(Icons.home), Text("KPR")],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.airline_seat_individual_suite),
                        Text("KERANDA")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // category Product
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Kategori Barang",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lihat Semua >",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                padding: EdgeInsets.only(left: 10, right: 22),
                scrollDirection: Axis.horizontal,
                children: generateCategoryViews(),
              ),
            ),

            // Promo
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Promo Hari ini",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lihat Semua >",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                padding: EdgeInsets.only(left: 10, right: 22, top: 8),
                scrollDirection: Axis.horizontal,
                children: generatePromoWidgets(),
              ),
            ),

            // Products
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Produk populer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lihat Semua >",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                padding: EdgeInsets.only(left: 10, right: 22, top: 8),
                scrollDirection: Axis.horizontal,
                children: generateProducts(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    "BL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
                Text("HOME", style: TextStyle(color: Colors.grey)),
              ],
            ),
            title: Text("", style: TextStyle(color: rubyColor, fontSize: 0)),
            activeIcon: Column(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: rubyColor,
                  ),
                  child: Center(
                      child: Text(
                    "BL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
                Text("HOME", style: TextStyle(color: rubyColor)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                Text("Favorit", style: TextStyle(color: Colors.grey))
              ],
            ),
            title: Text("", style: TextStyle(color: rubyColor, fontSize: 0)),
            activeIcon: Column(
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: rubyColor,
                ),
                Text("Favorit", style: TextStyle(color: rubyColor))
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: <Widget>[
                Icon(
                  Icons.airline_seat_individual_suite,
                  color: Colors.grey,
                ),
                Text("Keranda", style: TextStyle(color: Colors.grey))
              ],
            ),
            title: Text("", style: TextStyle(color: rubyColor, fontSize: 0)),
            activeIcon: Column(
              children: <Widget>[
                Icon(
                  Icons.airline_seat_individual_suite,
                  color: rubyColor,
                ),
                Text("Keranda", style: TextStyle(color: rubyColor))
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: <Widget>[
                Icon(
                  Icons.autorenew,
                  color: Colors.grey,
                ),
                Text("Transaksi", style: TextStyle(color: Colors.grey)),
              ],
            ),
            title: Text("", style: TextStyle(color: rubyColor, fontSize: 0)),
            activeIcon: Column(
              children: <Widget>[
                Icon(
                  Icons.autorenew,
                  color: rubyColor,
                ),
                Text("Transaksi", style: TextStyle(color: rubyColor)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                Text("Tersangka", style: TextStyle(color: Colors.grey)),
              ],
            ),
            title: Text("", style: TextStyle(color: rubyColor, fontSize: 0)),
            activeIcon: Column(
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: rubyColor,
                ),
                Text("Tersangka", style: TextStyle(color: rubyColor)),
              ],
            ),
          ),
        ],
        currentIndex: index,
        onTap: (i) => _updateIndex(i),
        fixedColor: Colors.grey,
      ),
    );
  }

  var index = 0;

  _updateIndex(int i) {
    setState(() {
      index = i;
    });
  }

  Future<List<Promo>> _loadDataFromApi(String s) {
    return Future(() {
      return List();
    });
  }

  void _onLoadPromo() {
    DataLoader.of(this).getData();
  }

  @override
  onData(Promo data) {
    // TODO: implement on get data promo
    return null;
  }

  @override
  onError(String cause, int code) {
    // TODO: implement onError
    return null;
  }

}
