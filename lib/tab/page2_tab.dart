import 'package:flutter/material.dart';
import 'package:vega/util/dulce_tile.dart'; // ignore: must_be_immutable

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Carlos V", "50", Colors.blue, "lib/images/carlosv.png"],
    ["Manguitos", "45", Colors.pink, "lib/images/D1manguitos.png"],
    ["Totis", "84", Colors.purple, "lib/images/D6totis.png"],
    ["Paleta payaso", "100", Colors.brown, "lib/images/payaso.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
