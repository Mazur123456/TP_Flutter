class CaseModel{
  bool hidden = true;
  bool hasBomb = false;
  bool hasExploded = false;   //tupe? si facultatif
  bool fasFlag = false;
  int number = 0;


  void placerbomb(){
    hasBomb = true;
  }

  bool possedeBomb(){
    return hasBomb;
  }

}