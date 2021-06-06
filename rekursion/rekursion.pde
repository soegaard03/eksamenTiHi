//rekursion
  
  void setup(){
    groenneFlasker(9); //giver den en værdi - og kalder den
  }
  
void groenneFlasker(int flaskerTilbage){ 
  println(flaskerTilbage); 
  
  if(flaskerTilbage>0){ //sætter et parameter så det ikke bliver til et uendeligt loop
    groenneFlasker(flaskerTilbage-1); //her kalder den sig selv = rekursion
  }
}
