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
  }

    bool tryGetCase(int x,int y){
      return (x>=0 && x<=nbLine && y<=nbCol && y>=0);
    }

    List<CaseModel> casesAuTour(int x,int y){
      List<CaseModel> auTour = List<CaseModel>.empty();

      for(int i=-1;i<=3;i++){
        for(int j=-1;j<=3;j++){
          if(tryGetCase(x-j,y-i)){
            auTour.add(_cases[x-j][y-i]);
          }
        }
      }
      return auTour;
    }

    int computerNumber(int x, int y){
      int cpt=0;
      List<CaseModel> grille = casesAuTour(x,y);
      for (int i = 0;i<grille.length;i++){
          if (grille[i].possedeBomb()){
            cpt++;
          }
      }return cpt;
    }

    void initNumber(){

    }




  }