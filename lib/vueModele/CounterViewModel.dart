import 'package:flutter/foundation.dart';
import '../modele/CounterModel.dart';

class CounterViewModel extends ChangeNotifier {

  final CounterModel _counterModel = CounterModel();

  int get counter => _counterModel.counter;

  void increment() {
    _counterModel.incremanter();
    notifyListeners();
  }

  void decrement() {
    _counterModel.decremanter();
    notifyListeners();
  }

}
