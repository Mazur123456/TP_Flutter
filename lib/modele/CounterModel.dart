
class CounterModel{
  int _counter=0;

  CounterModel(this._counter);

  int get counter => _counter;

  void incremanter(){
    _counter++;
  }

  void decremanter(){
    _counter--;
  }

}