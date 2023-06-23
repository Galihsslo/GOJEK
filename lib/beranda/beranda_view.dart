import 'package:flutter/material.dart';
import 'package:flutter_galih/beranda/beranda_gojek_appbar.dart';
import 'package:flutter_galih/beranda/beranda_model.dart';
import 'package:flutter_galih/constant.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  List<GojekService> _gojekServiceList = [];
  List<Food> _goFoodFeaturedList = [];
  @override
  void initState() {
    super.initState();

    _gojekServiceList.add(GojekService(
        image: Icons.directions_bike,
        color: Gojekpalette.menuRide,
        title: "GO-RIDE"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_car_wash,
        color: Gojekpalette.menuCar,
        title: "GO-CAR"));
    _gojekServiceList.add(GojekService(
        image: Icons.directions_car,
        color: Gojekpalette.menuBluebird,
        title: "GO-BLUEBIRD"));
    _gojekServiceList.add(GojekService(
        image: Icons.restaurant,
        color: Gojekpalette.menuFood,
        title: "GO-FOOD"));
    _gojekServiceList.add(GojekService(
        image: Icons.next_week,
        color: Gojekpalette.menuSend,
        title: "GO-SEND"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_offer,
        color: Gojekpalette.menuDeals,
        title: "GO-DEALS"));
    _gojekServiceList.add(GojekService(
        image: Icons.phonelink_ring,
        color: Gojekpalette.menuPulsa,
        title: "GO-PULSA"));
    _gojekServiceList.add(GojekService(
        image: Icons.apps, color: Gojekpalette.menuOther, title: "LAINNYA"));
    _gojekServiceList.add(GojekService(
        image: Icons.shopping_basket,
        color: Gojekpalette.menuShop,
        title: "GO-SHOP"));
    _gojekServiceList.add(GojekService(
        image: Icons.shopping_cart,
        color: Gojekpalette.menuMart,
        title: "GO-MART"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_play, color: Gojekpalette.menuTix, title: "GO-TIX"));

    //fitur gofood

    Future<List<Food>> fetchFood() async {
      List<Food> _goFoodFeaturedList = [];
      _goFoodFeaturedList
          .add(Food(title: "Steak Andakar", image: "assets/img/food_1.jpg"));
      _goFoodFeaturedList
          .add(Food(title: "Mie Ayam Tumino", image: "assets/img/food_2.jpg"));
      _goFoodFeaturedList
          .add(Food(title: "Tengkleng HUHUA", image: "assets/img/food_3.jpg"));
      _goFoodFeaturedList
          .add(Food(title: "Star Steak", image: "assets/img/food_4.jpg"));
      _goFoodFeaturedList
          .add(Food(title: "Warteg", image: "assets/img/food_5.jpg"));

      return new Future.delayed(new Duration(seconds: 1), () {
        return _goFoodFeaturedList;
      });
    }
    // _goFoodFeaturedList.add(
    //     new Food(title: "Steak Andakar", image: "assets/images/food_1.jpg"));
    // _goFoodFeaturedList.add(
    //     new Food(title: "Mie Ayam Tumini", image: "assets/images/food_2.jpg"));
    // _goFoodFeaturedList.add(
    //     new Food(title: "Tengkleng Hohah", image: "assets/images/food_3.jpg"));
    // _goFoodFeaturedList.add(
    //     new Food(title: "Warung Steak", image: "assets/images/food_4.jpg"));
    // _goFoodFeaturedList.add(new Food(
    //     title: "Kindai Warung Banjar", image: "assets/images/food_5.jpg"));
  }

  Widget _buildGojekServiceMenu() {
    return SizedBox(
      width: double.infinity,
      height: 220.0,
      child: Container(
        margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, position) {
            return _rowGojekService(_gojekServiceList[position]);
          },
        ),
      ),
    );
  }

// gofood featured
  // Widget _buildGoFoodFeatured() {
  //   return Container(
  //     padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: <Widget>[
  //         Text(
  //           "GO-FOOD",
  //           style: TextStyle(fontFamily: "NeoSansBold"),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(top: 8.0),
  //         ),
  //         Text(
  //           "Pilihan Terlaris",
  //           style: TextStyle(fontFamily: "NeoSansBold"),
  //         ),
  //         SizedBox(
  //           height: 172.0,
  //           // child: ListView.builder(
  //           //   itemCount: _goFoodFeaturedList.length,
  //           //   padding: EdgeInsets.only(top: 12.0),
  //           //   physics: ClampingScrollPhysics(),
  //           //   scrollDirection: Axis.horizontal,
  //           //   itemBuilder: (context, index) {
  //           //     return _rowGoFoodFeatured(_goFoodFeaturedList[index]);

  //           //   },
  //           // ),
  //           child: FutureBuilder<List>(
  //             future: fetchFood(),
  //             builder: (context, snapshot) {
  //               if (snapshot.hasData) {
  //                 return new ListView.builder(
  //                   itemCount: snapshot.data!.length,
  //                   padding: EdgeInsets.only(top: 12.0),
  //                   physics: new ClampingScrollPhysics(),
  //                   scrollDirection: Axis.horizontal,
  //                   itemBuilder: (context, index) {
  //                     return new _rowGoFoodFeatured(snapshot.data![index]);
  //                   },
  //                 );
  //               }
  //               return Center(
  //                 child: SizedBox(
  //                     width: 40.0,
  //                     height: 40.0,
  //                     child: const CircularProgressIndicator()),
  //               );
  //             },
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildGoFoodFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "GO-FOOD",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            "Pilihan Terlaris",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 172.0,
            child: FutureBuilder<List>(
                future: fetchFood(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data!.length,
                      padding: EdgeInsets.only(top: 12.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowGoFoodFeatured(snapshot.data![index]);
                      },
                    );
                  }
                  return Center(
                    child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: const CircularProgressIndicator()),
                  );
                }),
          ),
        ],
      ),
    );
  }

// end gofood featured

// start menu bottom sheeet
  Widget _buildMenuBottomSheet() {
    return new StatefulBuilder(builder: (c, s) {
      return new SafeArea(
          child: new Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        width: double.infinity,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(4.0), color: Colors.white),
        child: new Column(
          children: <Widget>[
            new Icon(
              Icons.drag_handle,
              color: Gojekpalette.grey,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "GO-JEK Services",
                  style:
                      new TextStyle(fontFamily: "NeoSansBold", fontSize: 18.0),
                ),
                new OutlinedButton(
                  //color: Gojekpalette.green
                  onPressed: () {},
                  child: new Text(
                    "EDIT FAVORITES",
                    style: new TextStyle(
                        fontSize: 12.0, color: Gojekpalette.green),
                  ),
                ),
              ],
            ),
            new Container(
              height: 300.0,
              child: new GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _gojekServiceList.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return _rowGojekService(_gojekServiceList[position]);
                },
              ),
            )
          ],
        ),
      ));
    });
  }

// end start menu bottom sheeet
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //safe area untuk menempatkan pada tempatnya
      child: Scaffold(
        appBar: GojekAppBar(), //untuk memanggil fungsi appbar
        backgroundColor: Gojekpalette.grey,
        body: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  _buildGopayMenu(),
                  // _buildGopayServicesMenu(),
                  _buildGojekServiceMenu()
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  _buildGoFoodFeatured(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

// tampilan gopay menu
  Widget _buildGopayMenu() {
    return Container(
      height: 120.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff3164bd), Color(0xff295cb5)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff3164bd), Color(0xff295cb5)],
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.0),
                    topRight: Radius.circular(3.0))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GOPAY",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "NeoSansBold"),
                ),
                Text(
                  "Rp. 9.993.890",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "NeoSansBold"),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/icon_transfer.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    const Text(
                      "Transfer",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/icon_scan.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    const Text(
                      "Scan QR",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/icon_saldo.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    const Text(
                      "Isi Saldo",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/icon_menu.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    const Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _rowGojekService(GojekService gojekService) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // showModalBottomSheet<void>(
            //   context: context,
            //   builder: (context) {
            //     return _buildMenuBottomSheet();
            //   },
            // );
            var snackBar =
                SnackBar(content: Text("${gojekService.title} clicked"));
            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Gojekpalette.grey200, width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              gojekService.image,
              color: gojekService.color,
              size: 32,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          gojekService.title,
          style: const TextStyle(fontSize: 10),
        )
      ],
    );
  }
}

Widget _rowGoFoodFeatured(Food food) {
  return Container(
    margin: EdgeInsets.only(right: 16.0),
    child: Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            food.image,
            width: 132.0,
            height: 132.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        Text(
          food.title,
        ),
      ],
    ),
  );
}
