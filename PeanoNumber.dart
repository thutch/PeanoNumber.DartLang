class PeanoNumber {
  
  static PeanoNumber fromInteger(int num){
    print('fromInteger: ${num}');
    if(num == 0)
      {
        return new Zero();
      } 
    else
      {
      var t = PeanoNumber.fromInteger(num - 1);
      return new Succ.of(t);
      }
   
  }
  
  
  PeanoNumber addPeanoNumber(PeanoNumber aPeanoNumber){
    return aPeanoNumber;
  }
  
  PeanoNumber succ() {
    return new Succ(this);
  }
  
  String toString(){
    return 'Should not get here';
  }
  
}
