
import 'package:flutter/material.dart';

import '../../data/const.dart';
import '../../data/image/image.dart';

class TraceController extends ChangeNotifier {
  final List<MyImage> _images = kImageList;
  final List<MyImage> _collection = [];
  final List<MyImage> _likes = [];


  List<MyImage> get myCollection => _collection;
  List<MyImage> get myLikes => _likes;
  List<MyImage> get myImages => _images;

  void addCollection(MyImage image) {
    _collection.add(image);
    notifyListeners();
  }

  void removeCollection(MyImage image) {
    _collection.remove(image);
    notifyListeners();
  }

  bool isMarkedCollection(MyImage image) {
    return _collection.contains(image);
  }

  void removeAllCollection() {
    _collection.clear();
    notifyListeners();
  }
  void addLikes(MyImage image) {
    _likes.add(image);
    notifyListeners();
  }

  void removeLikes(MyImage image) {
    _likes.remove(image);
    notifyListeners();
  }

  bool isMarkedLikes(MyImage image) {
    return _likes.contains(image);
  }

  void removeAllLikes() {
    _likes.clear();
    notifyListeners();
  }
}
