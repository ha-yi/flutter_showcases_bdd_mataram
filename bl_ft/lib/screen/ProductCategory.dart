import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  final Category cat;

  const ProductCategory({Key key, this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = 150;
    double h = 100;
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image:
              DecorationImage(image: NetworkImage(cat.img), fit: BoxFit.cover)),
      child: Stack(
        children: <Widget>[
          Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(77, 0, 0, 0),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              cat.name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}

class Category {
  final String name;
  final String img;

  Category(this.name, this.img);
}

var cats = [
  Category("HANDPHONE",
      "https://boygeniusreport.files.wordpress.com/2018/10/bgr-oneplus-6t-9.jpg?quality=98&strip=all&w=782"),
  Category("FASHION PRIA",
      "http://sunnydhiman.com/wp-content/uploads/2014/09/IMG_4595-website-720x1080.jpg"),
  Category("FASHION WANITA",
      "https://lh6.googleusercontent.com/proxy/BBjnzPQ8giUf6V0U3fga_YCmgJi5ECo3HopqrzpRYYhxghX_7v80fpMQDFeIv6NoyMRCijytZ0qksQruiQ3hA6b0vTuuDqLQzHrSNy-Td1NXdKFgE6n2--5GPkv1Qy-qORw5Hntbtx2NGDf2lMD-fLca84_C6xO5afOBzw9rAwKnO2yEZDPgQuK7e33ODpFT4Hb5Z8-_9Ims15ot=s0-d"),
  Category("RUMAH TANGGA",
      "https://cdn.shopify.com/s/files/1/2660/5106/files/LR-2-Main_159cda8c-8447-4d3b-888b-0bc8b8999dd2_960x.jpg?v=1546552038"),
  Category("BARANG ANTIK",
      "https://i1.wp.com/aksiconsulting.co.id/wp-content/uploads/2017/10/barang-antik.jpg?fit=640%2C480"),
  Category(
      "HANDICRAFT", "https://i.ytimg.com/vi/uxnAfYCPj5o/maxresdefault.jpg"),
  Category("BUKU",
      "https://www.amnesty.org.uk/files/styles/poster/s3/2018-08/books-548x331.jpg?6_RB5rrWNmvYuI7IRX8j5R0lElIJ7DqP&itok=mgh-vdvG"),
  Category(
      "KOMPUTER", "https://www.digitalstorm.com/img/desktops-2019-1-2-A.jpg"),
];

List<Widget> generateCategoryViews({row = 2}) {
  List<Widget> catt = List();

  for (int i = 0; i < cats.length; i += row) {
    int count = i + row;
    List<Widget> cts = List();
    for (int j = i; j < count; j++) {
      cts.add(Padding(
        padding: const EdgeInsets.only(left: 12, top: 12),
        child: ProductCategory(
          cat: cats[j],
        ),
      ));
    }
    catt.add(Column(
      children: cts,
    ));
  }
  return catt;
}

class EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
