import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_shop_bro/model/shopList.dart';
import 'package:line_icons/line_icons.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 23.0, right: 23.0, left: 23.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/AsianMale.png")),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Hi, Vikri!",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(LineIcons.shoppingBag),
                    iconSize: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 33.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.0),
              child: Text(
                "Find the best\nproduct for you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 23.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.0),
              child: CupertinoSearchTextField(
                borderRadius: BorderRadius.circular(20.0),
                padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
              ),
            ),
            SizedBox(
              height: 23.0,
            ),
            StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                crossAxisSpacing: 23.0,
                mainAxisSpacing: 23.0,
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: sList.length,
                itemBuilder: (context, index) => ShopCard(
                      shopImage: sList[index].image ?? "null",
                      shopName: sList[index].name ?? "null",
                      shopPrice: sList[index].price ?? 'null',
                    ),
                staggeredTileBuilder: (index) => StaggeredTile.fit(1))
            // StaggeredTile.count(1, index.isEven ? 1.2 : 1.0))
          ],
        ),
      ),
    );
  }
}

class ShopCard extends StatefulWidget {
  final String shopImage;
  final String shopName;
  final String shopPrice;

  const ShopCard({
    Key? key,
    required this.shopImage,
    required this.shopName,
    required this.shopPrice,
  }) : super(key: key);

  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                fit: BoxFit.cover,
                image: widget.shopImage),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            widget.shopName,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            widget.shopPrice,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
