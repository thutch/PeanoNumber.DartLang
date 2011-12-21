class Succ extends PeanoNumber {
   PeanoNumber _pred;
   
   PeanoNumber get pred() => _pred;
   
   Succ(PeanoNumber aPeanoNumber){
     _pred = aPeanoNumber;
   }
   
  Succ.of(PeanoNumber aPeanoNumber){
     _pred = aPeanoNumber;
   }
   
   void set setPred(PeanoNumber aPeanoNumber) {
     _pred = aPeanoNumber;
   }
   
   String toString(){
     StringBuffer buffer = new StringBuffer();
     buffer.add('succ(');
     buffer.add(_pred.toString());
     buffer.add(')');
     return buffer.toString();
   }
   
   PeanoNumber addPeanoNumber(PeanoNumber aPeanoNumber){
     return _pred.addPeanoNumber(aPeanoNumber).succ();
   }

}
