//{ } +   -  >   <   "  "  &   '  ' *
int repinta;
int x=250;
int y=480;
boolean derecha = false;
boolean izquierda= false;
boolean gameOver= true;
Nave nv7= new Nave();
ArrayList<bala> balas = new ArrayList <bala>();
ArrayList<enemigo> enemigos = new ArrayList <enemigo>();
ArrayList<bomba> bombas = new ArrayList <bomba>();
boolean ganador = false; 



void setup(){
size (500,500);
background(0);
fill(255);
stroke(255);
//enemigo
for (int i = 0; i <10; i++) {
 enemigo enemigo7 = new enemigo (i * 20 + 10);
 enemigos.add(enemigo7);
  }
}
void draw (){ 
  background(0);
  nv7.avanzar();
  nv7.dibujar();
  for(bala x : balas){
   x.avanzar();
   x.dibujar();
    }
    for(enemigo x : enemigos){ 
     x.avanzar();
     x.dibujar();
    }
     for(bomba x : bombas){
     x.avanzar();
     x.dibujar();
  }
  colisionBalaEnemigo();
  colisionBalaBomba();
  colisionBombaNave();
  
  
  eliminarBombasPerdidas();
  eliminarBalasPerdidas();
  
  //print(" balas "+ balas.size());
  //println("bombas "+bombas.size());

 } 


void keyPressed() { 
//println("" + keyCode);
 nv7.teclaApretada(keyCode);
 
 
}

void keyReleased(){ 
 nv7.teclaSoltada(keyCode);
}











//---------------------//{ } +   -  >   <   "  "  &   '  ' *
void eliminarBalasPerdidas(){ 

 ArrayList<bala> balasElim = new ArrayList <bala>();
 for(bala b : balas){
   if (b.y<0) { 
     balasElim.add(b);
   } 
 }
  balas.removeAll(balasElim);
} 
void eliminarBombasPerdidas(){ 
ArrayList<bomba> bombasElim = new ArrayList <bomba>();
 for(bomba b : bombas){
   if (b.y> 500) { 
    bombasElim.add(b);
   } 
  }
 bombas.removeAll(bombasElim);
 }
 void colisionBalaEnemigo() { 
  ArrayList<bala> BalasElim = new ArrayList <bala>();
  ArrayList<enemigo> EnemigosElim = new ArrayList <enemigo>();
   for(bala b : balas){ 
    for (enemigo e : enemigos){ 
      float dist = sqrt(pow(b.x-e.x ,2) + pow(b.y - e.y ,2)); 
         if(dist < 20){
           BalasElim.add(b);
           EnemigosElim.add(e);
         } 
       }
    } 
     balas.removeAll(BalasElim);
     enemigos.removeAll(EnemigosElim);
   } 
 void colisionBalaBomba() { 
  ArrayList<bala> BalasElim = new ArrayList <bala>();
  ArrayList<bomba> BombasElim = new ArrayList <bomba>();
  for(bala ba : balas){ 
    for (bomba bo : bombas){ 
      float dist = sqrt(pow(bo.x-ba.x ,2) + pow(bo.y - ba.y ,2)); 
         if(dist < 10){
           BalasElim.add(ba);
           BombasElim.add(bo);
        } 
      } 
    }
     balas.removeAll(BalasElim);
     bombas.removeAll(BombasElim);
   } 
   
     void colisionBombaNave(){
     for(bomba b : bombas){ 
     float dist = sqrt(pow(b.x-nv7.x ,2) + pow(b.y - nv7.y ,2)); 
       if(dist < 15){
        println(" GAME OVER ");
        exit();
     } 
   } 
 } 
   
 //-----------------------
 
 
 
 
 class Nave{ 
 int x=250;
 int y=480;
 boolean derecha = false;
 boolean izquierda= false;
 void dibujar(){ 
   ellipse(x,y,10,10);
  }
  void avanzar() { 
  if (derecha) { 
     x= x + 3;
  }
  if(izquierda){ 
    x= x-3;
     }
   }
   void teclaApretada(int code){
    if (code == 39) { 
     x= x + 3;
    derecha = true;
  }
  if(code==37){ 
    izquierda= true;
  }
  if(code == 32) {
    //disaparo
    bala aux = new bala (x,y);
    balas.add(aux);
   }
 } 
 
   void teclaSoltada (int code){ 
   if (code == 39) {
  derecha = false;
  }  
  if(code==37){ 
    izquierda= false;
   }
  } 
}
//{ } +   -  >   <   "  "  &   '  '

class bala { 
  int x=0;
  int y=0;
  bala (int px, int py){ 
    x = px;
    y = py;
  }
  void dibujar(){
    ellipse(x,y,5,5);
  } 
  void avanzar(){ 
    y = y - 4;
  }
}
 
 class enemigo{ 
  int x= 0;
  int y = 0;
  boolean derecha=true;
    enemigo(int py){ 
      y = py;
      x= int(random(10,490));
      int moneda = int(random(0,10));
      if (moneda<5){ 
        derecha=true;
      }else{ 
        derecha=false;
      }
    }
    void dibujar (){ 
      ellipse(x,y,15,15);
    }
    void avanzar (){ 
     if (derecha){ 
      x= x + 2;
     }else{ 
     x= x - 2;
     } 
     if (x  > 490){ 
       derecha = false;
     }
     if (x < 10){ 
      derecha = true;
     }
      int moneda = int(random(0,200));
      if (moneda == 7){ 
       bomba bomba7 = new bomba (x,y);
        bombas.add(bomba7);
      } 

     }
 }
 class bomba{ 
  int x=0;
  int y=0;
 bomba (int px, int py){ 
    x = px;
    y = py;
  }
  void dibujar(){
    ellipse(x,y,5,5);
  } 
  void avanzar(){ 
    y = y + 4;
  }
 }
//{ } +   -  >   <   "  "  &   '  '


  
  
  
  
  
  
  
  
  
  
  
