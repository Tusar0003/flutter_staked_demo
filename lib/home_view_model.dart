import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  String title;
  int _counter = 0;
  int get getCounter => _counter;

  HomeViewModel({required this.title});

  increment() {
    _counter++;
    print(_counter);
    notifyListeners();
  }

  decrement() {
    _counter--;
    notifyListeners();
  }
}