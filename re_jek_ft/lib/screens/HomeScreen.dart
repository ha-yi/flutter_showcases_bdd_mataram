import 'package:flutter/material.dart';
import 'package:re_jek_ft/ui/CardItem.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 50,
                left: 30,
                right: 70,
                // "Search reJek¡ service"
                child: TextField(
                  decoration: InputDecoration(
//                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      border: UnderlineInputBorder(),
                      prefix: Icon(Icons.search),
                      hintText: "Search reJEK¡ services..."),
                  autocorrect: false,
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                bottom: 10,
                child: Icon(
                  Icons.assistant,
                  size: 30,
                  color: Colors.yellow[700],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        preferredSize: Size(double.infinity, 70),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        color: Colors.blue[700]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "rePA¥",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rp10.000.000",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: Colors.blue[600]),
                    child: Container(
                      height: 90,
                      child: GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "rePAY",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            height: 60,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.place,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Nearby",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            height: 60,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.add_box,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Top Up",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            height: 60,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.playlist_play,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "More",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                children: <Widget>[
                  CardItem(
                    card: CardContent(
                        Image.network(
                          "http://www.bakuon-anime.com/core_sys/images/main/common/cat_img1.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        "re-Ride"),
                  ),
                  CardItem(
                    card: CardContent(
                        Image.network(
                          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/595eeef2-4a9e-4a08-ad51-722c024ca5f5/d83jzjt-b3d58eec-df65-4163-93b6-c32c82c9ad96.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzU5NWVlZWYyLTRhOWUtNGEwOC1hZDUxLTcyMmMwMjRjYTVmNVwvZDgzanpqdC1iM2Q1OGVlYy1kZjY1LTQxNjMtOTNiNi1jMzJjODJjOWFkOTYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.0fLE5WmeN52YV2S4lffveFa0DC2apcXB5Fl1GfH_cbU",
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        "re-Cars"),
                  ),
                  CardItem(
                    card: CardContent(
                        Image.network(
                          "https://www.freepngimg.com/thumb/taxi_cab/13-2-taxi-cab-download-png-thumb.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        "re-Taxi"),
                  ),
                  CardItem(
                    card: CardContent(
                        Image.network(
                          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0b3e85f8-2c30-4dbd-af05-d82f6252b893/d5bpdyz-6e88d641-6a09-48ef-a13c-25f409323948.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzBiM2U4NWY4LTJjMzAtNGRiZC1hZjA1LWQ4MmY2MjUyYjg5M1wvZDVicGR5ei02ZTg4ZDY0MS02YTA5LTQ4ZWYtYTEzYy0yNWY0MDkzMjM5NDgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.UmZMAKCFnUZreEnYXWtuXwtuch-xPvi3QPKUw8rooYo",
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        "re-Food"),
                  ),
                  CardItem(
                    card: CardContent(
                        Image.network(
                          "https://img.fireden.net/a/image/1516/92/1516929544898.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        "re-Pack"),
                  ),
//                  CardItem(card: CardContent(Image.network("https://img.fireden.net/a/image/1516/92/1516929544898.png", width: 50, height: 50, fit: BoxFit.scaleDown,), "re-Cars"),),
//                  CardItem(card: CardContent(Image.network("https://img.fireden.net/a/image/1516/92/1516929544898.png", width: 50, height: 50, fit: BoxFit.scaleDown,), "re-Cars"),),
//                  CardItem(card: CardContent(Image.network("https://img.fireden.net/a/image/1516/92/1516929544898.png", width: 50, height: 50, fit: BoxFit.scaleDown,), "re-Cars"),),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.grey[300],
            ),
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://pm1.narvii.com/5679/9af643729c6d4b43b277a60b5ae4833742a3f3c4_hq.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0x99333333)),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "reJEK¡",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 50,
                      right: 50,
                      child: Center(
                          child: Text(
                        "SIAPAKAH YANG PANTAS",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Positioned(
                      top: 30,
                      left: 50,
                      right: 50,
                      child: Center(
                          child: Text(
                        "JADI HOKAGE?",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "RE-NEWS",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Pertarungan dahsyat antara Naruto dan sasuke memperebutkan korsi Hokage. Siapakah yg pantas mendapatkannya??",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {},
                    child: Text("CHECK HERE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://static.zerochan.net/Ookami.to.Koushinryou.full.904628.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0x55009900)),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "reJEK¡",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 10,
                      bottom: 30,
                      right: 150,
                      child: Center(
                          child: Text(
                        "Perjalanan ga kalah serunya sambilan nonton anime.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                        child: Text("ORDER reCar"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://img1.goodfon.com/wallpaper/nbig/5/96/anime-art-akame-ga-kill-esdeath-devushka.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0x55000088)
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "reJEK¡",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 10,
                      bottom: 30,
                      right: 150,
                      child: Center(
                          child: Text(
                        "Kepanasan? kagak lagi kalo perjalanan bareng mbak ini.... dijamin beku di tengah jalan...",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                        child: Text("ORDER reCar"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey[700],
            ),
            title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_add_check,
              color: Colors.grey[700],
            ),
            title: Text("Orders")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.live_help,
              color: Colors.grey[700],
            ),
            title: Text("Help")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline,
              color: Colors.grey[700],
            ),
            title: Text("Inbox")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey[700],
            ),
            title: Text("Account")),
      ]),
    );
  }
}
