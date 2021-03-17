import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const Map<String, Product> kDummyData = {
  '0' : Product(
          id: '0',
          title: 'Explore Pixel phones',
          description: TextSpan(children: <TextSpan>[
            TextSpan(text: 'Capture the details.\n', style: TextStyle(color: Colors.black)),
            TextSpan(text: 'Capture your world.', style: TextStyle(color: Colors.blue)),
          ]),
          pictureKey: 'assets/pixels.png',
        ),
  '1' : Product(
          id: '1',
          title: 'Nest Audio',
          description: TextSpan(children: <TextSpan>[
            TextSpan(text: 'Amazing sound.\n', style: TextStyle(color: Colors.green)),
            TextSpan(text: 'At your command.', style: TextStyle(color: Colors.black)),
          ]),
          pictureKey: 'assets/nest.png',
        ),
  '2' : Product(
          id: '2',
          title: 'Nest Audio Entertainment packages',
          description: TextSpan(children: <TextSpan>[
            TextSpan(text: 'Built for music.\n', style: TextStyle(color: Colors.orange)),
            TextSpan(text: 'Made for you.', style: TextStyle(color: Colors.black)),
          ]),
          pictureKey: 'assets/nest-audio-packages.png',
      ),
  '3' : Product(
          id: '3',
          title: 'Nest Video Entertainment packages',
          description: TextSpan(children: <TextSpan>[
            TextSpan(text: 'So much to watch.\n', style: TextStyle(color: Colors.black)),
            TextSpan(text: 'So easy to find.', style: TextStyle(color: Colors.blue)),
          ]),
          pictureKey: 'assets/nest-video-packages.png',
      ),
  '4' : Product(
          id: '4',
          title: 'Nest Home Security packages',
          description: TextSpan(children: <TextSpan>[
            TextSpan(text: 'Your home,\n', style: TextStyle(color: Colors.black)),
            TextSpan(text: 'safe and sound.', style: TextStyle(color: Colors.red)),
          ]),
          pictureKey: 'assets/nest-home-packages.png',
        ),
};

class Server {
  static Product getProductById(String id) {
    return kDummyData[id]!;
  }

  static List<String> getProductList({String? filter}) {
    if (filter == null)
      return kDummyData.keys.toList();
    final List<String> ids = <String>[];
    for (final Product product in kDummyData.values) {
      if (product.title.toLowerCase().contains(filter.toLowerCase())) {
        ids.add(product.id);
      }
    }
    return ids;
  }
}

class Product {
  const Product({
    required this.id,
    required this.pictureKey,
    required this.title,
    required this.description
  });
  final String id;
  final String pictureKey;
  final String title;
  final TextSpan description;
}