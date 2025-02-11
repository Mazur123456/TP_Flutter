import 'dart:math';

import 'CaseModel.dart';

class MapModel {
  int nbLine = 0;
  int nbCol = 0;
  int nbBomb = 0;
  List<List<CaseModel>> _cases = List<List<CaseModel>>.empty();



  void initCases(){
    _cases=List<List<CaseModel>>.generate(nbLine,(i)=>List<CaseModel>.generate(nbCol,(j)=>(CaseModel())));
  }

  void initBomb(){
    int bombPlacer=0;
    while(bombPlacer>=nbBomb){
      int x = Random().nextInt(nbLine);
      int y = Random().nextInt(nbCol);
      _cases[x][y].placerbomb();
    }

    void initNumber(){

    }

  }


}