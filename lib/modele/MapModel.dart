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

    bool tryGetCase(int x,int y){
      return (x>=0 && x<=nbLine && y<=nbCol && y>=0);
    }

    List<CaseModel> casesAuTour(int x,int y){
      List<CaseModel> auTour = List<CaseModel>.empty();
      if(tryGetCase(x-1,y-1)){
        auTour.add(_cases[x-1][y-1]);
      }if(tryGetCase(x,y-1)){
        auTour.add(_cases[x][y-1]);
      }if(tryGetCase(x+1,y-1)){
        auTour.add(_cases[x+1][y]);
      }
      if(tryGetCase(x-1,y)){
        auTour.add(_cases[x-1][y]);
      }if(tryGetCase(x+1,y)){
        auTour.add(_cases[x+1][y]);
      }
      if(tryGetCase(x-1,y+1)){
        auTour.add(_cases[x-1][y+1]);
      }if(tryGetCase(x,y+1)){
        auTour.add(_cases[x][y+1]);
      }if(tryGetCase(x+1,y+1)){
        auTour.add(_cases[x+1][y+1]);
      }
      return auTour;
    }

    int computerNumber(int x, int y){
      int cpt=0;

      return cpt;
    }

    void initNumber(){

    }

  }


}