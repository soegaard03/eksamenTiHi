Hoejhuse lejelighed; //laver en instans af højehusene der hedder lejelighed

void setup(){
  lejelighed = new Hoejhuse();
  println("første tæller: " + lejelighed.etager + "," + lejelighed.trapper); 
  lejelighed.taelTrapper();
  println("anden tæller: " + lejelighed.etager + "," + lejelighed.trapper); //ikke pure fordi at taeltrapper har en ny værdi efter den er kørt
  
  int etager2 = 7; //giver den en værdi
  int trapper2 = lejelighed.taelTrapper2(etager2); //kører den pure function
  println(etager2 + "," + trapper2); //printer pure function
  println(lejelighed.etager + "," + lejelighed.trapper); //taeltrapper2 er pure da den ikke har ændret på denne værdi
  
}

class Hoejhuse{
  
int etager = 5;
int trapper = 0;

//impure
int taelTrapper(){
  while(etager > trapper){ //tager en værdi ude fra (etager) som funktionen er afhænig af
    trapper++; //ændre på værdien ude for metoden (ikke pure - side effekt)
  } 
  return trapper;
}

//pure 
int taelTrapper2(int etager2){ //her er værdien et parameter i funktionen og derfor ikke afhægnig af en variabel ude fra 
  int trapper2 = 0; // da denne defineres inde i funktionen og bliver ændret herinde er det ikke en side effect
  while(etager2 > trapper2){
    trapper2++;
  }
  return trapper2;
}

}
