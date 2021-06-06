//algoritme

Mysort algoritme; //laver en instans af objektet

void setup(){
algoritme = new Mysort();
    int[] talDerSkalSorteres = {14,3,12,2,3,4,5,36,7,8,1}; //laver arrayet med tal
    algoritme.sortering(talDerSkalSorteres); //kalder metoden
  
  for (int i=0; i < talDerSkalSorteres.length; i++){
            println(i + ". tal er: " + talDerSkalSorteres[i]);
}
}

 class Mysort {
 void sortering(int[] tal) {
        int temp;
        for(int length= tal.length; length>1; length--){ //for at den liste der tjekkes bliver kortere hver gang
          
          //bobbel sortering - mindste 'bobler' flyder øverst, største synker (i dette tilfælde)
          for (int i=0; i < length; i++){ //parametre for at forloopet kører
            if(i+1<length) { //altså så længe at der stadig er en variabel mere at kigge på skal den køre
              if(tal[i]>tal[i+1]){ //og hvis det første tal er større end det næste tal i rækken så skal det næste ske
                temp=tal[i]; //giver den en midlertidig plads for at de kan bytte værdi
                tal[i]=tal[i+1]; //bytter værdi
                tal[i+1]=temp; //skifter den midlertideige værdi ud med den nye plads
            }
        }
        }  
  }
  }
  }
