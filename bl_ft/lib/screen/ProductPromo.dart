import 'package:flutter/material.dart';

class ProdukPromo extends StatelessWidget {
  final Promo promo;

  const ProdukPromo({Key key, this.promo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: promo.bgColor),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: promo.getScaledImage(),
                  ),
                ),
                promo.expired != null
                    ? Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 5, bottom: 5, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                topLeft: Radius.circular(5)),
                            color: Color.fromARGB(255, 215, 17, 73),
                          ),
                          child: Text(
                            promo.expired,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      )
                    : Container(),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: promo.prefix,
                      ),
                      Flexible(
                        flex: 1,
                        child: promo.suffix,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(promo.name),
          ),
          promo.discount == null
              ? Container()
              : Text(
                  promo.discount,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
          promo.price == null
              ? Container()
              : Text(
                  promo.price,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
          promo.ratingCount == null
              ? Container()
              : Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow[700],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow[700],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow[700],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow[700],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow[700],
                    ),
                    Text(
                      "(${promo.ratingCount})",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}

class Promo {
  final String expired;
  final String image;
  final Color bgColor;
  final Widget prefix;
  final Widget suffix;
  final String name;
  final bool isScaled;
  final String price;
  final String ratingCount;
  final int ratingStars;
  final String discount;

  Promo(this.name, this.image, this.bgColor, this.prefix, this.suffix,
      {this.expired,
      this.isScaled = true,
      this.price,
      this.ratingStars,
      this.ratingCount,
      this.discount});

  Widget getScaledImage() {
    if (isScaled)
      return Image.network(
        image,
        width: 75,
        height: 75,
        fit: BoxFit.scaleDown,
      );
    else
      return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
      );
  }
}

List<Promo> proms = [
  Promo(
      "Monitor bekas jatuh dari lantai 15",
      "https://hpaust.com/wp-content/uploads/2017/12/592SU-Transparent-background-e1513740110113.png",
      Colors.orange[200],
      Text(
        "DISKON",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "99%",
        style: TextStyle(color: Colors.orange[900], fontSize: 20),
      ),
      expired: "25 Tahun lagi"),
  Promo(
      "Monitor bekas jatuh dari lantai 15",
      "https://hpaust.com/wp-content/uploads/2017/12/592SU-Transparent-background-e1513740110113.png",
      Colors.green[200],
      Text(
        "DISKON",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "99%",
        style: TextStyle(color: Colors.green[900], fontSize: 20),
      ),
      expired: "25 Tahun lagi"),
  Promo(
      "Monitor bekas jatuh dari lantai 15",
      "https://hpaust.com/wp-content/uploads/2017/12/592SU-Transparent-background-e1513740110113.png",
      Colors.purple[200],
      Text(
        "DISKON",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "99%",
        style: TextStyle(color: Colors.purple[900], fontSize: 20),
      ),
      expired: "25 Tahun lagi"),
  Promo(
      "Monitor bekas jatuh dari lantai 15",
      "https://hpaust.com/wp-content/uploads/2017/12/592SU-Transparent-background-e1513740110113.png",
      Colors.red[200],
      Text(
        "DISKON",
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "99%",
        style: TextStyle(color: Colors.red[900], fontSize: 20),
      ),
      expired: "25 Tahun lagi"),
];

List<Widget> generatePromoWidgets() {
  return proms
      .map((p) => Padding(
            child: ProdukPromo(promo: p),
            padding: EdgeInsets.only(left: 12),
          ))
      .toList();
}

List<Promo> prods = [
  Promo(
      "Figma Megumin",
      "https://d3ieicw58ybon5.cloudfront.net/ex/350.403/shop/product/2d871f86f3694493a3923e604fc38198.jpg",
      Colors.orange[200],
      Text(
        "",
        style: TextStyle(color: Colors.white, fontSize: 0),
      ),
      Text(
        "%",
        style: TextStyle(color: Colors.orange[900], fontSize: 0),
      ),
      isScaled: false,
      price: "Rp500.000",
      ratingCount: "1873"),
  Promo(
    "One Punch Man",
    "https://www.kamehashop.fr/27276-large_default/one-punch-man-figurine-saitama-hqs-tsume.jpg",
    Colors.orange[200],
    Text(
      "",
      style: TextStyle(color: Colors.white, fontSize: 0),
    ),
    Text(
      "%",
      style: TextStyle(color: Colors.orange[900], fontSize: 0),
    ),
    isScaled: false,
    price: "Rp300.000",
    ratingCount: "1873",
    discount: "Rp800.000",
  ),
  Promo(
    "Date a Life, Yoshinon",
    "https://ae01.alicdn.com/kf/HTB1AuJsJXXXXXcKaXXXq6xXFXXXo/Japan-Anime-Figure-Date-A-Live-Yoshino-Figurine-Brinquedos-PVC-Action-Figure-Juguetes-Collectible-Model-Doll.jpg_640x640.jpg",
    Colors.orange[200],
    Text(
      "",
      style: TextStyle(color: Colors.white, fontSize: 0),
    ),
    Text(
      "%",
      style: TextStyle(color: Colors.orange[900], fontSize: 0),
    ),
    isScaled: false,
    price: "Rp300.000",
    ratingCount: "200",
  ),
  Promo(
    "Taito, Grand blue fantasy",
    "https://m.media-amazon.com/images/I/81t6pZRWouL._SR500,500_.jpg",
    Colors.orange[200],
    Text(
      "",
      style: TextStyle(color: Colors.white, fontSize: 0),
    ),
    Text(
      "%",
      style: TextStyle(color: Colors.orange[900], fontSize: 0),
    ),
    isScaled: false,
    price: "Rp1.000.000",
    ratingCount: "986",
  ),
];

List<Widget> generateProducts() {
  return prods
      .map((p) => Padding(
            child: ProdukPromo(promo: p),
            padding: EdgeInsets.only(left: 12),
          ))
      .toList();
}

abstract class DataListener<T> {
  onData(T data);
  onError(String cause, int code);
}

class DataLoader<T> {
  DataListener _listener;
  DataLoader(this._listener);

  static DataLoader of(DataListener listener) {
    return DataLoader(listener);
  }

  getData() {
    Future((){return T;})
        .asStream()
        .listen((data) => _listener.onData(data))
        .onError((error) => _listener.onError(error, 300));
  }
}