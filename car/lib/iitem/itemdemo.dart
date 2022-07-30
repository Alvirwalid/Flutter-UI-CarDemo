import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemprice {
  String? name, price, hour, img;
  IconData? ratingicon;
  IconData? arrowicon;
  double? rating;

  itemprice(
      {this.name,
      this.ratingicon,
      this.price,
      this.hour,
      this.arrowicon,
      this.rating,
      this.img});
}

final List<itemprice> myitem = [
  itemprice(name: 'Porsche taycan',ratingicon: Icons.star,rating:5.0 ,price: '\$38',hour: '/hour',arrowicon: Icons.arrow_forward,img:'./images/car3.png'),

  itemprice(name: 'Porsche 911',ratingicon: Icons.star,rating:4.2 ,price: '\$43',hour: '/hour',arrowicon: Icons.arrow_forward,img:'./images/car5.png'),
  itemprice(name: 'Porsche taycan',ratingicon: Icons.star,rating:5.0 ,price: '\$38',hour: '/hour',arrowicon: Icons.arrow_forward,img:'./images/car3.png'),

  itemprice(name: 'Porsche 911',ratingicon: Icons.star,rating:4.2 ,price: '\$43',hour: '/hour',arrowicon: Icons.arrow_forward,img:'./images/car5.png'),
  itemprice(name: 'Porsche taycan',ratingicon: Icons.star,rating:5.0 ,price: '\$38',hour: '/hour',arrowicon: Icons.arrow_forward,img:'./images/car3.png'),

  itemprice(name: 'Porsche 911',ratingicon: Icons.star,rating:4.2 ,price: '\$43',hour: '/hour',arrowicon: Icons.arrow_forward,img:'./images/car5.png'),

];
