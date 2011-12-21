class PeanoNumber {
  
  static PeanoNumber fromInteger(int num){
    print('$num');
    if(num == 0){
      return new Zero();
    } else
      {
      var t = PeanoNumber.fromInteger(num - 1);
      return new Succ(t);
      }
   
  }
  
  
  PeanoNumber addPeanoNumber(PeanoNumber aPeanoNumber){
    return aPeanoNumber;
  }
  
  PeanoNumber succ() {
    return new Succ(this);
  }
  
}