import 'package:flutter/foundation.dart';
import '../constants.dart';
import 'plant.dart';

class PlantData with ChangeNotifier {
  final List<Plant> _plantItems = [
    Plant(
        title: 'Oscar Plant',
        imageUrl: 'https://www.ikea.com/fr/fr/images/products/fejka-plante-artificielle-en-pot-interieur-exterieur-monstera__0959226_pe809439_s5.jpg?f=s',
        popularity: 4.8,
        price: 150,
    ),
    Plant(
      title: 'cactus Plant',
      imageUrl: 'https://m.media-amazon.com/images/I/41EeL+mYGNL._AC_.jpg',
      popularity: 2.5,
      price: 300,
    ),
    Plant(
      title: 'Oscar Plant',
      imageUrl: 'https://www.ikea.com/fr/fr/images/products/fejka-plante-artificielle-en-pot-interieur-exterieur-monstera__0959226_pe809439_s5.jpg?f=s',
      popularity: 4.8,
      price: 150,
    ),
    Plant(
      title: 'cactus Plant',
      imageUrl: 'https://m.media-amazon.com/images/I/41EeL+mYGNL._AC_.jpg',
      popularity: 2.5,
      price: 300,
    ),
    Plant(
      title: 'Oscar Plant',
      imageUrl: 'https://www.ikea.com/fr/fr/images/products/fejka-plante-artificielle-en-pot-interieur-exterieur-monstera__0959226_pe809439_s5.jpg?f=s',
      popularity: 4.8,
      price: 150,
    ),
  ];

  List<Plant> get plantItems {
    return [..._plantItems];
  }
}